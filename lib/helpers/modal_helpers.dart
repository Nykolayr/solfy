import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:local_auth/local_auth.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_dictionary_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_country_item_response.dart';
import 'package:solfy_flutter/models/entities/wallet/condition_item_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/views/profile/region_search_view.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/modals/containers/error_modal.dart';
import 'package:solfy_flutter/widgets/modals/containers/error_toast.dart';
import 'package:solfy_flutter/widgets/modals/containers/floating_modal.dart';
import 'package:solfy_flutter/widgets/modals/containers/floating_modal_no_line.dart';
import 'package:solfy_flutter/widgets/modals/containers/loading_modal.dart';
import 'package:solfy_flutter/widgets/modals/containers/shop_card_container.dart';
import 'package:solfy_flutter/widgets/modals/content/agreement_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/card_shop_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/choosing_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/comfortable_payment_update_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/conditions_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/country_choosing_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/email_change_confirm_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/email_change_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/email_send_success_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/files_go_settings_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/filter_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/geolocation_request_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/location_go_settings_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/location_request_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/logout_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/phone_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/pin_fl_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/touch_id_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/uneditable_value_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/wallet_carousel_modal.dart';

/// Вспомогательные методы для вызова модальных окон
class ModalHelpers {
  static final ftoast = FToast();
  static bool isAnyLoadingModal = false;
  static bool isAnyCardModal = false;

  static void showToastWithText(String text, {double extraBottomPadding = 0}) {
    ftoast.showToast(
      child: ErrorToast(text, extraBottomPadding: extraBottomPadding),
      toastDuration: Duration(seconds: 2),
      positionedToastBuilder: (context, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [child],
        );
      },
    );
  }

  /// Показать модалку с ошибкой
  ///
  /// [context] – контекст
  /// [errors] – респонс с ошибками
  /// [onErrorSubmit] – коллбэк после подтверждения модалки
  static Future<void> showError(
    BuildContext context,
    ErrorsResponse errors, {
    void Function()? onErrorSubmit,
  }) async {
    if (errors.errors == null) {
      await showCustomModalBottomSheet(
        context: context,
        useRootNavigator: true,
        containerWidget: (_, animation, child) => FloatingModal(
          child: child,
        ),
        builder: (context) => ErrorModal(),
      );
    } else {
      if (errors.errors!.isNotEmpty && errors.errors!.first.type == "E1") {
        await showCustomModalBottomSheet(
          context: context,
          useRootNavigator: true,
          containerWidget: (_, animation, child) => FloatingModal(
            child: child,
          ),
          builder: (context) => ErrorModal(
            message: errors.errors!.first.title,
            subTitle: errors.errors!.first.message,
            onErrorSubmit: onErrorSubmit,
          ),
        );
      }
    }
  }

  /// Показать модалку с соглашением по типу [type]
  static void showAgreementModal(
    BuildContext context, {
    AgreementType type = AgreementType.cpdp,
  }) {
    showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      topRadius: Radius.circular(16),
      backgroundColor: Colors.white,
      builder: (context) => AgreementModal(type),
    );
  }

  /// Показать модалку при успешном сохранении email
  static Future<void> showEmailSendSuccessModal(BuildContext context) async {
    await showCustomModalBottomSheet(
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalEmailSend(),
    );
  }

  /// Показать модалку с предложением включить биометрию
  static Future<void> showBiometricModal(
      BuildContext context, BiometricType type) async {
    await showCustomModalBottomSheet(
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalTouchId(type),
    );
  }

  /// Показать модалку с загрузкой
  static void showLoadingModal(BuildContext context,
      {bool useRootNavigator = true}) {
    if (isAnyLoadingModal) {
      return;
    }
    showCustomModalBottomSheet(
      context: context,
      isDismissible: false,
      useRootNavigator: useRootNavigator,
      barrierColor: Colors.transparent,
      duration: Duration(milliseconds: 0),
      enableDrag: false,
      containerWidget: (_, animation, child) => LoadingModalContainer(
        child: child,
      ),
      builder: (context) => LoadingRingAnimation(
        ringSize: 40,
        lineWidth: 3,
      ),
    ).then((value) => isAnyLoadingModal = false);
    isAnyLoadingModal = true;
  }

  /// Показать модалку с выходом из приложения
  static void showLogoutModal(BuildContext context) {
    showCustomModalBottomSheet(
      useRootNavigator: true,
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalLogout(),
    );
  }

  /// Показать модалку с примером пин_фл
  static void showPinFlModal(BuildContext context) {
    showCustomModalBottomSheet(
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalPinFL(),
    );
  }

  /// Модалку по клику на нередактируемое значение
  static void showUneditableValueModal(BuildContext context) {
    showCustomModalBottomSheet(
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalUneditableValue(),
    );
  }

  /// Показать модалку с выбором варианта
  static void showModalWithVariants(
    BuildContext context, {
    required String title,
    DictionariesDictionaryResponse? variants,
    List<String?>? stringVariants,
    String? selectedVariant,
    void Function(String)? onVariantTap,
    bool canSearch = false,
  }) {
    FocusScope.of(context).unfocus();
    showCupertinoModalBottomSheet(
      enableDrag: false,
      context: context,
      topRadius: Radius.circular(16),
      backgroundColor: Colors.white,
      builder: (context) => ChoosingModal(
        title: title,
        selectedVariant: selectedVariant,
        dictVariants: variants,
        variants: stringVariants,
        onVariantTap: onVariantTap,
        canSearch: canSearch,
      ),
    );
  }

  /// Показать модалку с выбором страны
  static void showCountryPickModal(
    BuildContext context, {
    required String title,
    required List<GeoCountryItemResponse> variants,
    FormBuilderFieldState? field,
    bool canSearch = false,
  }) {
    FocusScope.of(context).unfocus();
    showCupertinoModalBottomSheet(
      enableDrag: false,
      context: context,
      topRadius: Radius.circular(16),
      backgroundColor: Colors.white,
      builder: (context) => CountryChoosingModal(
        title: title,
        selectedVariant: field?.value,
        variants: variants,
        onVariantTap: (text) => field?.didChange(text),
        canSearch: true,
      ),
    );
  }

  /// Показать модалку со сменой email'а
  static void showEmailChangeModal(BuildContext context) {
    showCustomModalBottomSheet(
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalChangeEmail(),
    );
  }

  /// Модалка с подтверждением успешной смены email'а
  static void showEmailResetConfirmModal(BuildContext context) {
    showCustomModalBottomSheet(
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalEmailResetConfirm(),
    );
  }

  /// Модалка при отсутствии доступа к файлам
  static Future<void> showFilesGoSettingsModal(BuildContext context) async {
    await showCustomModalBottomSheet(
      useRootNavigator: true,
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalFilesGoSettings(),
    );
  }

  /// Модалка при отсутствии доступа к геопозиции
  static Future<void> showGeoRequestModalSettings(BuildContext context) async {
    await showCustomModalBottomSheet(
      useRootNavigator: true,
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalLocationGoSettings(),
    );
  }

  /// Модалка при отсутствии доступа к геопозиции
  static Future<void> showGeoRequestModalFeed(BuildContext context) async {
    await showCustomModalBottomSheet(
      context: context,
      useRootNavigator: true,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalGeolocationRequestFeed(),
    );
  }

  /// Модалка с выбором региона
  static void showRegionModal(BuildContext context) {
    showCupertinoModalBottomSheet(
      expand: true,
      useRootNavigator: true,
      enableDrag: false,
      context: context,
      topRadius: Radius.circular(16),
      backgroundColor: Colors.white,
      builder: (context) => RepositoryProvider(
        create: (context) => Injector().get<ProfileRepository>(),
        child: RegionSearchView(isModal: true),
      ),
    );
  }

  /// Модалка с фильтрами
  static void showFilterModal(
    BuildContext context,
    FilterRequest request, {
    void Function()? onSubmit,
  }) {
    showCupertinoModalBottomSheet(
      expand: true,
      useRootNavigator: true,
      enableDrag: false,
      context: context,
      topRadius: Radius.circular(16),
      backgroundColor: Colors.white,
      builder: (context) => FilterModal(request, onSubmit: onSubmit),
    );
  }

  /// Модалка с запросом на геолокацию
  static Future<void> showGeoRequestModal(BuildContext context) async {
    await showCustomModalBottomSheet(
      context: context,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalGeolocationRequest(updateMarkers: true),
    );
  }

  /// Модалка с обновлением суммы комфортного платежа
  static void showComfortablePaymentUpdateModal(
      BuildContext context, int value) {
    final bloc = context.read<WalletBloc>();
    showCupertinoModalBottomSheet(
      enableDrag: true,
      useRootNavigator: true,
      context: context,
      topRadius: Radius.circular(16),
      backgroundColor: Colors.white,
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: ComfortablePaymentUpdateModal(value),
      ),
    );
  }

  /// Модалка с магазином
  static void showCardModal(
    BuildContext context,
    ShopViewModel shop, {
    bool showMap = false,
    Color? storeColor,
    Color? storeTextColor,
  }) async {
    if (isAnyCardModal) {
      return;
    }
    final StoreBloc storeBloc = StoreBloc(
      Injector().get<CatalogRepository>(),
      isCatalogBloc: false,
    );
    final StoreShopsUpdateBloc shopsBloc = StoreShopsUpdateBloc(
      Injector().get<CatalogRepository>(),
      context.read<RegionSearchBloc>(),
    );
    isAnyCardModal = true;
    await showCustomModalBottomSheet(
        useRootNavigator: true,
        context: context,
        // barrierColor: Colors.black26,
        backgroundColor: Colors.white,
        containerWidget: (_, animation, child) => ShopCardContainer(
              child: child,
            ),
        builder: (BuildContext context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => storeBloc,
              ),
              BlocProvider(
                create: (context) => shopsBloc,
              ),
            ],
            child: CardShopModal(
              shop: shop,
              storeColor: storeColor,
              storeTextColor: storeTextColor,
              showMap: showMap,
            ),
          );
        }).then((value) => isAnyCardModal = false);
  }

  /// Модалка с состояниями рассрочки
  static Future<void> showConditionsModal(
    BuildContext context,
    String shopName,
    List<ConditionItemViewModel> conditions,
  ) async {
    await showCustomModalBottomSheet(
      context: context,
      useRootNavigator: true,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => FloatModalConditions(shopName, conditions),
    );
  }

  /// Показать модалку с каруселью
  static Future<void> showWalletCarouselModal(BuildContext context) async {
    await showCupertinoModalBottomSheet(
      expand: true,
      enableDrag: false,
      useRootNavigator: true,
      context: context,
      topRadius: Radius.circular(16),
      backgroundColor: Colors.white,
      builder: (context) => WalletCarouselModal(),
    );
  }

  /// Модалка с ошибкой о слишком больших прикрепленных файлах
  static Future<void> showFilesSizeErrorModel(BuildContext context) async {
    await showCustomModalBottomSheet(
      context: context,
      useRootNavigator: true,
      containerWidget: (_, animation, child) => FloatingModal(
        child: child,
      ),
      builder: (context) => ErrorModal(
        message: "Слишком большой объем изображения",
        subTitle: "Пожалуйста, прикрепите\nизображение объемом\nне более 15 Мб",
      ),
    );
  }

  /// Модалка с номерами телефонов на карточке магазина
  static Future<void> showPhonesModal(
      BuildContext context, List<String>? phones) async {
    await showCustomModalBottomSheet(
      context: context,
      useRootNavigator: true,
      containerWidget: (_, animation, child) => FloatingModalNoLine(
        child: child,
      ),
      builder: (context) => PhoneModal(
        phones,
      ),
    );
  }
}
