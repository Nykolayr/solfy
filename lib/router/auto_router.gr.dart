// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'dart:async' as _i62;
import 'package:auto_route/auto_route.dart' as _i59;
import 'package:flutter/material.dart' as _i60;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i66;
import '../bloc/biometric_set_bloc/biometric_set_bloc.dart' as _i61;
import '../bloc/faq_bloc/faq_bloc.dart' as _i69;
import '../bloc/store_bloc/store_bloc.dart' as _i63;
import '../bloc/store_shops_update_bloc/store_shops_update_bloc.dart' as _i64;
import '../main.dart' as _i1;
import '../models/api/catalog/filter_request.dart' as _i67;
import '../models/api/profile/feed/feed_response.dart' as _i65;
import '../models/api/wallet/operation/operation_operation_item_response.dart'
    as _i68;
import '../views/base_tab_balance_view.dart' as _i38;
import '../views/base_tab_feed_view.dart' as _i36;
import '../views/base_tab_profile_view.dart' as _i39;
import '../views/base_tab_stack_wrapper.dart' as _i15;
import '../views/base_tab_stores_view.dart' as _i37;
import '../views/base_tab_view.dart' as _i35;
import '../views/feed/feed_detail_stack_wrapper.dart' as _i41;
import '../views/feed/feed_detail_view.dart' as _i45;
import '../views/feed/feeds_view.dart' as _i40;
import '../views/onboarding/email_input_stack_wrapper.dart' as _i4;
import '../views/onboarding/email_input_view.dart' as _i18;
import '../views/onboarding/forgot_pin_code_view.dart' as _i11;
import '../views/onboarding/phone_number_input_view.dart' as _i17;
import '../views/onboarding/phone_number_stack_wrapper.dart' as _i3;
import '../views/onboarding/pin_code_login_stack_wrapper.dart' as _i6;
import '../views/onboarding/pin_code_login_view.dart' as _i20;
import '../views/onboarding/pin_code_stack_wrapper.dart' as _i5;
import '../views/onboarding/pin_code_view.dart' as _i19;
import '../views/onboarding/questionnaire/address_form_view.dart' as _i28;
import '../views/onboarding/questionnaire/choosing_filial_form_view.dart'
    as _i33;
import '../views/onboarding/questionnaire/choosing_filial_stack_wrapper.dart'
    as _i31;
import '../views/onboarding/questionnaire/job_info_form_view.dart' as _i29;
import '../views/onboarding/questionnaire/personal_information_form_view.dart'
    as _i27;
import '../views/onboarding/questionnaire/property_form_view.dart' as _i30;
import '../views/onboarding/questionnaire/questionnaire_stack_wrapper.dart'
    as _i12;
import '../views/onboarding/questionnaire/your_request_complete_waiting_view.dart'
    as _i32;
import '../views/onboarding/questionnaire/your_request_view.dart' as _i26;
import '../views/onboarding/questionnaire/your_request_waiting_chat_view.dart'
    as _i25;
import '../views/onboarding/short_form_view.dart' as _i24;
import '../views/onboarding/sms_code_stack_wrapper.dart' as _i2;
import '../views/onboarding/sms_code_view.dart' as _i16;
import '../views/onboarding/welcome_view.dart' as _i10;
import '../views/profile/about_app_view.dart' as _i14;
import '../views/profile/biometric_set_stack_wrapper.dart' as _i7;
import '../views/profile/biometric_set_view.dart' as _i21;
import '../views/profile/change_pin_stack_wrapper.dart' as _i8;
import '../views/profile/change_pin_view.dart' as _i22;
import '../views/profile/faq_stack_wrapper.dart' as _i53;
import '../views/profile/faq_view.dart' as _i57;
import '../views/profile/language_settings_view.dart' as _i56;
import '../views/profile/personal_information_stack_wrapper.dart' as _i13;
import '../views/profile/personal_information_view.dart' as _i34;
import '../views/profile/profile_view.dart' as _i52;
import '../views/profile/region_search_view.dart' as _i55;
import '../views/profile/send_letter_stack_wrapper.dart' as _i54;
import '../views/profile/send_letter_view.dart' as _i58;
import '../views/stores/category_stores_stack_wrapper.dart' as _i42;
import '../views/stores/category_stores_view.dart' as _i46;
import '../views/stores/map_stack_wrapper.dart' as _i44;
import '../views/stores/search_stack_wrapper.dart' as _i9;
import '../views/stores/search_view.dart' as _i23;
import '../views/stores/store_map_view.dart' as _i48;
import '../views/stores/store_stack_wrapper.dart' as _i43;
import '../views/stores/store_view.dart' as _i47;
import '../views/stores/stores_view.dart' as _i49;
import '../views/wallet/wallet_payment_details_view.dart' as _i51;
import '../views/wallet/wallet_view.dart' as _i50;
import 'package:solfy_flutter/views/onboarding/questionnaire/card/your_request_card_waiting_view.dart'
    as _i70;

class AppRouter extends _i59.RootStackRouter {
  AppRouter([_i60.GlobalKey<_i60.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i59.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.MyHomePage());
    },
    LogoutRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.MyHomePage());
    },
    SmsCodeViewRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SmsCodeStackWrapper());
    },
    PhoneNumberRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PhoneNumberStackWrapper());
    },
    EmailInputViewRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmailInputStackWrapper());
    },
    PinCodeViewRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PinCodeStackWrapper());
    },
    PinCodeLoginViewRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PinCodeLoginStackWrapper());
    },
    BiometricSetRoute.name: (routeData) {
      final args = routeData.argsAs<BiometricSetRouteArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i7.BiometricSetStackWrapper(args.biometricBloc, key: args.key));
    },
    ChangePinRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ChangePinStackWrapper());
    },
    SearchRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SearchStackWrapper());
    },
    WelcomeView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.WelcomeView());
    },
    YourRequestCardWaitingView.name: (routeData) {
      final args = routeData.argsAs<YourRequestCardWaitingViewArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i70.YourRequestCardWaitingView(
            insurance_premium: args.insurance_premium,
          ));
    },
    ForgotPinCodeView.name: (routeData) {
      final args = routeData.argsAs<ForgotPinCodeViewArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.ForgotPinCodeView(args.message));
    },
    QuestionnaireStackRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.QuestionnaireStackWrapper());
    },
    PersonalInformationRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i13.PersonalInformationStackWrapper());
    },
    AboutAppView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.AboutAppView());
    },
    BaseTabRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.BaseTabStackWrapper());
    },
    SmsCodeView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.SmsCodeView());
    },
    PhoneNumberInputView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.PhoneNumberInputView());
    },
    EmailInputView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.EmailInputView());
    },
    PinCodeView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.PinCodeView());
    },
    PinCodeLoginView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.PinCodeLoginView());
    },
    BiometricSetView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.BiometricSetView());
    },
    ChangePinView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.ChangePinView());
    },
    SearchView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.SearchView());
    },
    ShortFormView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.ShortFormView());
    },
    YourRequestWaitingChatView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.YourRequestWaitingChatView());
    },
    YourRequestView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.YourRequestView());
    },
    PersonalInformationFormView.name: (routeData) {
      final args = routeData.argsAs<PersonalInformationFormViewArgs>(
          orElse: () => const PersonalInformationFormViewArgs());
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i27.PersonalInformationFormView(
              updateCallback: args.updateCallback));
    },
    AddressFormView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.AddressFormView());
    },
    JobInfoFormView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.JobInfoFormView());
    },
    PropertyFormView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.PropertyFormView());
    },
    ChoosingFilialRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.ChoosingFilialStackWrapper());
    },
    YourRequestCompleteWaitingView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i32.YourRequestCompleteWaitingView());
    },
    ChoosingFilialFormView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.ChoosingFilialFormView());
    },
    PersonalInformationView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i34.PersonalInformationView());
    },
    BaseTabView.name: (routeData) {
      final args = routeData.argsAs<BaseTabViewArgs>(
          orElse: () => const BaseTabViewArgs());
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i35.BaseTabView(key: args.key));
    },
    BaseTabFeedView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i36.BaseTabFeedView());
    },
    BaseTabStoresView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i37.BaseTabStoresView());
    },
    BaseTabBalanceView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i38.BaseTabBalanceView());
    },
    BaseTabProfileView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i39.BaseTabProfileView());
    },
    FeedsView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i40.FeedsView());
    },
    FeedDetailRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i41.FeedDetailStackWrapper());
    },
    BrandsRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i42.CategoryStoresStackWrapper());
    },
    StoreRoute.name: (routeData) {
      final args = routeData.argsAs<StoreRouteArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i43.StoreStackWrapper(
              brandBloc: args.brandBloc,
              shopsUpdateBloc: args.shopsUpdateBloc,
              isModal: args.isModal,
              key: args.key));
    },
    SearchStoresRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SearchStackWrapper());
    },
    StoreMapRoute.name: (routeData) {
      final args = routeData.argsAs<StoreMapRouteArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i44.MapStackWrapper(
              shopsUpdateBloc: args.shopsUpdateBloc, key: args.key));
    },
    FeedDetailView.name: (routeData) {
      final args = routeData.argsAs<FeedDetailViewArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i45.FeedDetailView(args.feed));
    },
    CategoryStoresView.name: (routeData) {
      final args = routeData.argsAs<CategoryStoresViewArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i46.CategoryStoresView(args.categoryName));
    },
    StoreView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i47.StoreView());
    },
    StoreMapView.name: (routeData) {
      final args = routeData.argsAs<StoreMapViewArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i48.StoreMapView(
              args.storeName, args.headerColor, args.textHeaderColor,
              initialLatLng: args.initialLatLng,
              customFilter: args.customFilter,
              id: args.id,
              key: args.key));
    },
    StoresView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i49.StoresView());
    },
    WalletView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i50.WalletView());
    },
    WalletPaymentDetailsView.name: (routeData) {
      final args = routeData.argsAs<WalletPaymentDetailsViewArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i51.WalletPaymentDetailsView(args.operation));
    },
    ProfileView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i52.ProfileView());
    },
    FaqRoute.name: (routeData) {
      final args = routeData.argsAs<FaqRouteArgs>();
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i53.FaqStackWrapper(args.bloc, key: args.key));
    },
    SendLetterRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i54.SendLetterStackWrapper());
    },
    RegionSearchView.name: (routeData) {
      final args = routeData.argsAs<RegionSearchViewArgs>(
          orElse: () => const RegionSearchViewArgs());
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i55.RegionSearchView(isModal: args.isModal));
    },
    LanguageSettingsView.name: (routeData) {
      final args = routeData.argsAs<LanguageSettingsViewArgs>(
          orElse: () => const LanguageSettingsViewArgs());
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i56.LanguageSettingsView(
              onTap: args.onTap, profileContext: args.profileContext));
    },
    FaqView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i57.FaqView());
    },
    SendLetterView.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: _i58.SendLetterView());
    }
  };

  @override
  List<_i59.RouteConfig> get routes => [
        _i59.RouteConfig(MyHomeRoute.name, path: '/'),
        _i59.RouteConfig(LogoutRoute.name, path: '/my-home-page'),
        _i59.RouteConfig(SmsCodeViewRoute.name, path: 'sms_confirm', children: [
          _i59.RouteConfig(SmsCodeView.name,
              path: '', parent: SmsCodeViewRoute.name)
        ]),
        _i59.RouteConfig(PhoneNumberRoute.name,
            path: '/phone-number-stack-wrapper',
            children: [
              _i59.RouteConfig(PhoneNumberInputView.name,
                  path: '', parent: PhoneNumberRoute.name)
            ]),
        _i59.RouteConfig(EmailInputViewRoute.name,
            path: '/email-input-stack-wrapper',
            children: [
              _i59.RouteConfig(EmailInputView.name,
                  path: '', parent: EmailInputViewRoute.name)
            ]),
        _i59.RouteConfig(PinCodeViewRoute.name,
            path: '/pin-code-stack-wrapper',
            children: [
              _i59.RouteConfig(PinCodeView.name,
                  path: '', parent: PinCodeViewRoute.name)
            ]),
        _i59.RouteConfig(PinCodeLoginViewRoute.name,
            path: '/pin-code-login-stack-wrapper',
            children: [
              _i59.RouteConfig(PinCodeLoginView.name,
                  path: '', parent: PinCodeLoginViewRoute.name)
            ]),
        _i59.RouteConfig(BiometricSetRoute.name,
            path: '/biometric-set-stack-wrapper',
            children: [
              _i59.RouteConfig(BiometricSetView.name,
                  path: '', parent: BiometricSetRoute.name)
            ]),
        _i59.RouteConfig(ChangePinRoute.name,
            path: '/change-pin-stack-wrapper',
            children: [
              _i59.RouteConfig(ChangePinView.name,
                  path: '', parent: ChangePinRoute.name)
            ]),
        _i59.RouteConfig(SearchRoute.name,
            path: '/search-stack-wrapper',
            children: [
              _i59.RouteConfig(SearchView.name,
                  path: '', parent: SearchRoute.name)
            ]),
        _i59.RouteConfig(WelcomeView.name, path: '/welcome-view'),
        _i59.RouteConfig(YourRequestCardWaitingView.name,
            path: '/YourRequestCardWaitingView'),
        _i59.RouteConfig(ForgotPinCodeView.name, path: '/forgot-pin-code-view'),
        _i59.RouteConfig(
          QuestionnaireStackRoute.name,
          path: '/questionnaire-stack-wrapper',
          children: [
            _i59.RouteConfig(ShortFormView.name,
                path: '', parent: QuestionnaireStackRoute.name),
            _i59.RouteConfig(YourRequestWaitingChatView.name,
                path: 'your-request-waiting-chat-view',
                parent: QuestionnaireStackRoute.name),
            _i59.RouteConfig(YourRequestView.name,
                path: 'your-request-view',
                parent: QuestionnaireStackRoute.name),
            _i59.RouteConfig(PersonalInformationFormView.name,
                path: 'personal-information-form-view',
                parent: QuestionnaireStackRoute.name),
            _i59.RouteConfig(AddressFormView.name,
                path: 'address-form-view',
                parent: QuestionnaireStackRoute.name),
            _i59.RouteConfig(JobInfoFormView.name,
                path: 'job-info-form-view',
                parent: QuestionnaireStackRoute.name),
            _i59.RouteConfig(PropertyFormView.name,
                path: 'property-form-view',
                parent: QuestionnaireStackRoute.name),
            _i59.RouteConfig(ChoosingFilialRoute.name,
                path: 'choosing-filial-stack-wrapper',
                parent: QuestionnaireStackRoute.name,
                children: [
                  _i59.RouteConfig(ChoosingFilialFormView.name,
                      path: '', parent: ChoosingFilialRoute.name)
                ]),
            _i59.RouteConfig(YourRequestCompleteWaitingView.name,
                path: 'your-request-complete-waiting-view',
                parent: QuestionnaireStackRoute.name),
          ],
        ),
        _i59.RouteConfig(PersonalInformationRoute.name,
            path: '/personal-information-stack-wrapper',
            children: [
              _i59.RouteConfig(PersonalInformationView.name,
                  path: '', parent: PersonalInformationRoute.name)
            ]),
        _i59.RouteConfig(AboutAppView.name, path: '/about-app-view'),
        _i59.RouteConfig(BaseTabRoute.name,
            path: '/base-tab-stack-wrapper',
            children: [
              _i59.RouteConfig(BaseTabView.name,
                  path: '',
                  parent: BaseTabRoute.name,
                  children: [
                    _i59.RouteConfig(BaseTabFeedView.name,
                        path: '',
                        parent: BaseTabView.name,
                        children: [
                          _i59.RouteConfig(FeedsView.name,
                              path: '', parent: BaseTabFeedView.name),
                          _i59.RouteConfig(FeedDetailRoute.name,
                              path: 'feed-detail-stack-wrapper',
                              parent: BaseTabFeedView.name,
                              children: [
                                _i59.RouteConfig(FeedDetailView.name,
                                    path: '', parent: FeedDetailRoute.name)
                              ]),
                          _i59.RouteConfig(BrandsRoute.name,
                              path: 'category-stores-stack-wrapper',
                              parent: BaseTabFeedView.name,
                              children: [
                                _i59.RouteConfig(CategoryStoresView.name,
                                    path: '', parent: BrandsRoute.name)
                              ]),
                          _i59.RouteConfig(StoreRoute.name,
                              path: 'store-stack-wrapper',
                              parent: BaseTabFeedView.name,
                              children: [
                                _i59.RouteConfig(StoreView.name,
                                    path: '', parent: StoreRoute.name)
                              ]),
                          _i59.RouteConfig(SearchStoresRoute.name,
                              path: 'search-stack-wrapper',
                              parent: BaseTabFeedView.name,
                              children: [
                                _i59.RouteConfig(SearchView.name,
                                    path: '', parent: SearchStoresRoute.name)
                              ]),
                          _i59.RouteConfig(StoreMapRoute.name,
                              path: 'map-stack-wrapper',
                              parent: BaseTabFeedView.name,
                              children: [
                                _i59.RouteConfig(StoreMapView.name,
                                    path: '', parent: StoreMapRoute.name)
                              ])
                        ]),
                    _i59.RouteConfig(BaseTabStoresView.name,
                        path: 'base-tab-stores-view',
                        parent: BaseTabView.name,
                        children: [
                          _i59.RouteConfig(StoresView.name,
                              path: '', parent: BaseTabStoresView.name),
                          _i59.RouteConfig(BrandsRoute.name,
                              path: 'category-stores-stack-wrapper',
                              parent: BaseTabStoresView.name,
                              children: [
                                _i59.RouteConfig(CategoryStoresView.name,
                                    path: '', parent: BrandsRoute.name)
                              ]),
                          _i59.RouteConfig(FeedDetailRoute.name,
                              path: 'feed-detail-stack-wrapper',
                              parent: BaseTabStoresView.name,
                              children: [
                                _i59.RouteConfig(FeedDetailView.name,
                                    path: '', parent: FeedDetailRoute.name)
                              ]),
                          _i59.RouteConfig(StoreRoute.name,
                              path: 'store-stack-wrapper',
                              parent: BaseTabStoresView.name,
                              children: [
                                _i59.RouteConfig(StoreView.name,
                                    path: '', parent: StoreRoute.name)
                              ]),
                          _i59.RouteConfig(SearchStoresRoute.name,
                              path: 'search-stack-wrapper',
                              parent: BaseTabStoresView.name,
                              children: [
                                _i59.RouteConfig(SearchView.name,
                                    path: '', parent: SearchStoresRoute.name)
                              ]),
                          _i59.RouteConfig(StoreMapRoute.name,
                              path: 'map-stack-wrapper',
                              parent: BaseTabStoresView.name,
                              children: [
                                _i59.RouteConfig(StoreMapView.name,
                                    path: '', parent: StoreMapRoute.name)
                              ])
                        ]),
                    _i59.RouteConfig(BaseTabBalanceView.name,
                        path: 'base-tab-balance-view',
                        parent: BaseTabView.name,
                        children: [
                          _i59.RouteConfig(WalletView.name,
                              path: '', parent: BaseTabBalanceView.name),
                          _i59.RouteConfig(WalletPaymentDetailsView.name,
                              path: 'wallet-payment-details-view',
                              parent: BaseTabBalanceView.name),
                          _i59.RouteConfig(BrandsRoute.name,
                              path: 'category-stores-stack-wrapper',
                              parent: BaseTabBalanceView.name,
                              children: [
                                _i59.RouteConfig(CategoryStoresView.name,
                                    path: '', parent: BrandsRoute.name)
                              ]),
                          _i59.RouteConfig(StoreRoute.name,
                              path: 'store-stack-wrapper',
                              parent: BaseTabBalanceView.name,
                              children: [
                                _i59.RouteConfig(StoreView.name,
                                    path: '', parent: StoreRoute.name)
                              ]),
                          _i59.RouteConfig(StoreMapRoute.name,
                              path: 'map-stack-wrapper',
                              parent: BaseTabBalanceView.name,
                              children: [
                                _i59.RouteConfig(StoreMapView.name,
                                    path: '', parent: StoreMapRoute.name)
                              ])
                        ]),
                    _i59.RouteConfig(BaseTabProfileView.name,
                        path: 'base-tab-profile-view',
                        parent: BaseTabView.name,
                        children: [
                          _i59.RouteConfig(ProfileView.name,
                              path: '', parent: BaseTabProfileView.name),
                          _i59.RouteConfig(FaqRoute.name,
                              path: 'faq-stack-wrapper',
                              parent: BaseTabProfileView.name,
                              children: [
                                _i59.RouteConfig(FaqView.name,
                                    path: '', parent: FaqRoute.name)
                              ]),
                          _i59.RouteConfig(SendLetterRoute.name,
                              path: 'send-letter-stack-wrapper',
                              parent: BaseTabProfileView.name,
                              children: [
                                _i59.RouteConfig(SendLetterView.name,
                                    path: '', parent: SendLetterRoute.name)
                              ]),
                          _i59.RouteConfig(RegionSearchView.name,
                              path: 'region-search-view',
                              parent: BaseTabProfileView.name),
                          _i59.RouteConfig(LanguageSettingsView.name,
                              path: 'language-settings-view',
                              parent: BaseTabProfileView.name)
                        ])
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i59.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i1.MyHomePage]
class LogoutRoute extends _i59.PageRouteInfo<void> {
  const LogoutRoute() : super(LogoutRoute.name, path: '/my-home-page');

  static const String name = 'LogoutRoute';
}

/// generated route for
/// [_i2.SmsCodeStackWrapper]
class SmsCodeViewRoute extends _i59.PageRouteInfo<void> {
  const SmsCodeViewRoute({List<_i59.PageRouteInfo>? children})
      : super(SmsCodeViewRoute.name,
            path: 'sms_confirm', initialChildren: children);

  static const String name = 'SmsCodeViewRoute';
}

/// generated route for
/// [_i3.PhoneNumberStackWrapper]
class PhoneNumberRoute extends _i59.PageRouteInfo<void> {
  const PhoneNumberRoute({List<_i59.PageRouteInfo>? children})
      : super(PhoneNumberRoute.name,
            path: '/phone-number-stack-wrapper', initialChildren: children);

  static const String name = 'PhoneNumberRoute';
}

/// generated route for
/// [_i4.EmailInputStackWrapper]
class EmailInputViewRoute extends _i59.PageRouteInfo<void> {
  const EmailInputViewRoute({List<_i59.PageRouteInfo>? children})
      : super(EmailInputViewRoute.name,
            path: '/email-input-stack-wrapper', initialChildren: children);

  static const String name = 'EmailInputViewRoute';
}

/// generated route for
/// [_i5.PinCodeStackWrapper]
class PinCodeViewRoute extends _i59.PageRouteInfo<void> {
  const PinCodeViewRoute({List<_i59.PageRouteInfo>? children})
      : super(PinCodeViewRoute.name,
            path: '/pin-code-stack-wrapper', initialChildren: children);

  static const String name = 'PinCodeViewRoute';
}

/// generated route for
/// [_i6.PinCodeLoginStackWrapper]
class PinCodeLoginViewRoute extends _i59.PageRouteInfo<void> {
  const PinCodeLoginViewRoute({List<_i59.PageRouteInfo>? children})
      : super(PinCodeLoginViewRoute.name,
            path: '/pin-code-login-stack-wrapper', initialChildren: children);

  static const String name = 'PinCodeLoginViewRoute';
}

/// generated route for
/// [_i7.BiometricSetStackWrapper]
class BiometricSetRoute extends _i59.PageRouteInfo<BiometricSetRouteArgs> {
  BiometricSetRoute(
      {required _i61.BiometricSetBloc biometricBloc,
      _i60.Key? key,
      List<_i59.PageRouteInfo>? children})
      : super(BiometricSetRoute.name,
            path: '/biometric-set-stack-wrapper',
            args: BiometricSetRouteArgs(biometricBloc: biometricBloc, key: key),
            initialChildren: children);

  static const String name = 'BiometricSetRoute';
}

class YourRequestCardWaitingViewArgs {
  const YourRequestCardWaitingViewArgs({required this.insurance_premium});

  final String insurance_premium;

  @override
  String toString() {
    return 'YourRequestCardWaitingViewArgs{ key: $insurance_premium}';
  }
}

class BiometricSetRouteArgs {
  const BiometricSetRouteArgs({required this.biometricBloc, this.key});

  final _i61.BiometricSetBloc biometricBloc;

  final _i60.Key? key;

  @override
  String toString() {
    return 'BiometricSetRouteArgs{biometricBloc: $biometricBloc, key: $key}';
  }
}

/// generated route for
/// [_i8.ChangePinStackWrapper]
class ChangePinRoute extends _i59.PageRouteInfo<void> {
  const ChangePinRoute({List<_i59.PageRouteInfo>? children})
      : super(ChangePinRoute.name,
            path: '/change-pin-stack-wrapper', initialChildren: children);

  static const String name = 'ChangePinRoute';
}

/// generated route for
/// [_i9.SearchStackWrapper]
class SearchRoute extends _i59.PageRouteInfo<void> {
  const SearchRoute({List<_i59.PageRouteInfo>? children})
      : super(SearchRoute.name,
            path: '/search-stack-wrapper', initialChildren: children);

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i10.WelcomeView]
class WelcomeView extends _i59.PageRouteInfo<void> {
  const WelcomeView() : super(WelcomeView.name, path: '/welcome-view');

  static const String name = 'WelcomeView';
}

/// generated route for
/// [_i70.YourRequestCardWaitingView]
class YourRequestCardWaitingView
    extends _i59.PageRouteInfo<YourRequestCardWaitingViewArgs> {
  YourRequestCardWaitingView({required String insurance_premium})
      : super(
          YourRequestCardWaitingView.name,
          path: '/YourRequestCardWaitingView',
          args: YourRequestCardWaitingViewArgs(
            insurance_premium: insurance_premium,
          ),
        );
  static const String name = 'YourRequestCardWaitingView';
}

/// generated route for
/// [_i11.ForgotPinCodeView]
class ForgotPinCodeView extends _i59.PageRouteInfo<ForgotPinCodeViewArgs> {
  ForgotPinCodeView({required String message})
      : super(ForgotPinCodeView.name,
            path: '/forgot-pin-code-view',
            args: ForgotPinCodeViewArgs(message: message));

  static const String name = 'ForgotPinCodeView';
}

class ForgotPinCodeViewArgs {
  const ForgotPinCodeViewArgs({required this.message});

  final String message;

  @override
  String toString() {
    return 'ForgotPinCodeViewArgs{message: $message}';
  }
}

/// generated route for
/// [_i12.QuestionnaireStackWrapper]
class QuestionnaireStackRoute extends _i59.PageRouteInfo<void> {
  const QuestionnaireStackRoute({List<_i59.PageRouteInfo>? children})
      : super(QuestionnaireStackRoute.name,
            path: '/questionnaire-stack-wrapper', initialChildren: children);

  static const String name = 'QuestionnaireStackRoute';
}

/// generated route for
/// [_i13.PersonalInformationStackWrapper]
class PersonalInformationRoute extends _i59.PageRouteInfo<void> {
  const PersonalInformationRoute({List<_i59.PageRouteInfo>? children})
      : super(PersonalInformationRoute.name,
            path: '/personal-information-stack-wrapper',
            initialChildren: children);

  static const String name = 'PersonalInformationRoute';
}

/// generated route for
/// [_i14.AboutAppView]
class AboutAppView extends _i59.PageRouteInfo<void> {
  const AboutAppView() : super(AboutAppView.name, path: '/about-app-view');

  static const String name = 'AboutAppView';
}

/// generated route for
/// [_i15.BaseTabStackWrapper]
class BaseTabRoute extends _i59.PageRouteInfo<void> {
  const BaseTabRoute({List<_i59.PageRouteInfo>? children})
      : super(BaseTabRoute.name,
            path: '/base-tab-stack-wrapper', initialChildren: children);

  static const String name = 'BaseTabRoute';
}

/// generated route for
/// [_i16.SmsCodeView]
class SmsCodeView extends _i59.PageRouteInfo<void> {
  const SmsCodeView() : super(SmsCodeView.name, path: '');

  static const String name = 'SmsCodeView';
}

/// generated route for
/// [_i17.PhoneNumberInputView]
class PhoneNumberInputView extends _i59.PageRouteInfo<void> {
  const PhoneNumberInputView() : super(PhoneNumberInputView.name, path: '');

  static const String name = 'PhoneNumberInputView';
}

/// generated route for
/// [_i18.EmailInputView]
class EmailInputView extends _i59.PageRouteInfo<void> {
  const EmailInputView() : super(EmailInputView.name, path: '');

  static const String name = 'EmailInputView';
}

/// generated route for
/// [_i19.PinCodeView]
class PinCodeView extends _i59.PageRouteInfo<void> {
  const PinCodeView() : super(PinCodeView.name, path: '');

  static const String name = 'PinCodeView';
}

/// generated route for
/// [_i20.PinCodeLoginView]
class PinCodeLoginView extends _i59.PageRouteInfo<void> {
  const PinCodeLoginView() : super(PinCodeLoginView.name, path: '');

  static const String name = 'PinCodeLoginView';
}

/// generated route for
/// [_i21.BiometricSetView]
class BiometricSetView extends _i59.PageRouteInfo<void> {
  const BiometricSetView() : super(BiometricSetView.name, path: '');

  static const String name = 'BiometricSetView';
}

/// generated route for
/// [_i22.ChangePinView]
class ChangePinView extends _i59.PageRouteInfo<void> {
  const ChangePinView() : super(ChangePinView.name, path: '');

  static const String name = 'ChangePinView';
}

/// generated route for
/// [_i23.SearchView]
class SearchView extends _i59.PageRouteInfo<void> {
  const SearchView() : super(SearchView.name, path: '');

  static const String name = 'SearchView';
}

/// generated route for
/// [_i24.ShortFormView]
class ShortFormView extends _i59.PageRouteInfo<void> {
  const ShortFormView() : super(ShortFormView.name, path: '');

  static const String name = 'ShortFormView';
}

/// generated route for
/// [_i25.YourRequestWaitingChatView]
class YourRequestWaitingChatView extends _i59.PageRouteInfo<void> {
  const YourRequestWaitingChatView()
      : super(YourRequestWaitingChatView.name,
            path: 'your-request-waiting-chat-view');

  static const String name = 'YourRequestWaitingChatView';
}

/// generated route for
/// [_i26.YourRequestView]
class YourRequestView extends _i59.PageRouteInfo<void> {
  const YourRequestView()
      : super(YourRequestView.name, path: 'your-request-view');

  static const String name = 'YourRequestView';
}

/// generated route for
/// [_i27.PersonalInformationFormView]
class PersonalInformationFormView
    extends _i59.PageRouteInfo<PersonalInformationFormViewArgs> {
  PersonalInformationFormView({_i62.Future<void> Function()? updateCallback})
      : super(PersonalInformationFormView.name,
            path: 'personal-information-form-view',
            args: PersonalInformationFormViewArgs(
                updateCallback: updateCallback));

  static const String name = 'PersonalInformationFormView';
}

class PersonalInformationFormViewArgs {
  const PersonalInformationFormViewArgs({this.updateCallback});

  final _i62.Future<void> Function()? updateCallback;

  @override
  String toString() {
    return 'PersonalInformationFormViewArgs{updateCallback: $updateCallback}';
  }
}

/// generated route for
/// [_i28.AddressFormView]
class AddressFormView extends _i59.PageRouteInfo<void> {
  const AddressFormView()
      : super(AddressFormView.name, path: 'address-form-view');

  static const String name = 'AddressFormView';
}

/// generated route for
/// [_i29.JobInfoFormView]
class JobInfoFormView extends _i59.PageRouteInfo<void> {
  const JobInfoFormView()
      : super(JobInfoFormView.name, path: 'job-info-form-view');

  static const String name = 'JobInfoFormView';
}

/// generated route for
/// [_i30.PropertyFormView]
class PropertyFormView extends _i59.PageRouteInfo<void> {
  const PropertyFormView()
      : super(PropertyFormView.name, path: 'property-form-view');

  static const String name = 'PropertyFormView';
}

/// generated route for
/// [_i31.ChoosingFilialStackWrapper]
class ChoosingFilialRoute extends _i59.PageRouteInfo<void> {
  const ChoosingFilialRoute({List<_i59.PageRouteInfo>? children})
      : super(ChoosingFilialRoute.name,
            path: 'choosing-filial-stack-wrapper', initialChildren: children);

  static const String name = 'ChoosingFilialRoute';
}

/// generated route for
/// [_i70.YourRequestCompleteWaitingView]
class YourRequestCompleteWaitingView extends _i59.PageRouteInfo<void> {
  const YourRequestCompleteWaitingView()
      : super(YourRequestCompleteWaitingView.name,
            path: 'Your_Request_Card_Waiting_View');

  static const String name = 'YourRequestCompleteWaitingView';
}

/// generated route for
/// [_i33.ChoosingFilialFormView]
class ChoosingFilialFormView extends _i59.PageRouteInfo<void> {
  const ChoosingFilialFormView() : super(ChoosingFilialFormView.name, path: '');

  static const String name = 'ChoosingFilialFormView';
}

/// generated route for
/// [_i34.PersonalInformationView]
class PersonalInformationView extends _i59.PageRouteInfo<void> {
  const PersonalInformationView()
      : super(PersonalInformationView.name, path: '');

  static const String name = 'PersonalInformationView';
}

/// generated route for
/// [_i35.BaseTabView]
class BaseTabView extends _i59.PageRouteInfo<BaseTabViewArgs> {
  BaseTabView({_i60.Key? key, List<_i59.PageRouteInfo>? children})
      : super(BaseTabView.name,
            path: '',
            args: BaseTabViewArgs(key: key),
            initialChildren: children);

  static const String name = 'BaseTabView';
}

class BaseTabViewArgs {
  const BaseTabViewArgs({this.key});

  final _i60.Key? key;

  @override
  String toString() {
    return 'BaseTabViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i36.BaseTabFeedView]
class BaseTabFeedView extends _i59.PageRouteInfo<void> {
  const BaseTabFeedView({List<_i59.PageRouteInfo>? children})
      : super(BaseTabFeedView.name, path: '', initialChildren: children);

  static const String name = 'BaseTabFeedView';
}

/// generated route for
/// [_i37.BaseTabStoresView]
class BaseTabStoresView extends _i59.PageRouteInfo<void> {
  const BaseTabStoresView({List<_i59.PageRouteInfo>? children})
      : super(BaseTabStoresView.name,
            path: 'base-tab-stores-view', initialChildren: children);

  static const String name = 'BaseTabStoresView';
}

/// generated route for
/// [_i38.BaseTabBalanceView]
class BaseTabBalanceView extends _i59.PageRouteInfo<void> {
  const BaseTabBalanceView({List<_i59.PageRouteInfo>? children})
      : super(BaseTabBalanceView.name,
            path: 'base-tab-balance-view', initialChildren: children);

  static const String name = 'BaseTabBalanceView';
}

/// generated route for
/// [_i39.BaseTabProfileView]
class BaseTabProfileView extends _i59.PageRouteInfo<void> {
  const BaseTabProfileView({List<_i59.PageRouteInfo>? children})
      : super(BaseTabProfileView.name,
            path: 'base-tab-profile-view', initialChildren: children);

  static const String name = 'BaseTabProfileView';
}

/// generated route for
/// [_i40.FeedsView]
class FeedsView extends _i59.PageRouteInfo<void> {
  const FeedsView() : super(FeedsView.name, path: '');

  static const String name = 'FeedsView';
}

/// generated route for
/// [_i41.FeedDetailStackWrapper]
class FeedDetailRoute extends _i59.PageRouteInfo<void> {
  const FeedDetailRoute({List<_i59.PageRouteInfo>? children})
      : super(FeedDetailRoute.name,
            path: 'feed-detail-stack-wrapper', initialChildren: children);

  static const String name = 'FeedDetailRoute';
}

/// generated route for
/// [_i42.CategoryStoresStackWrapper]
class BrandsRoute extends _i59.PageRouteInfo<void> {
  const BrandsRoute({List<_i59.PageRouteInfo>? children})
      : super(BrandsRoute.name,
            path: 'category-stores-stack-wrapper', initialChildren: children);

  static const String name = 'BrandsRoute';
}

/// generated route for
/// [_i43.StoreStackWrapper]
class StoreRoute extends _i59.PageRouteInfo<StoreRouteArgs> {
  StoreRoute(
      {required _i63.StoreBloc brandBloc,
      required _i64.StoreShopsUpdateBloc shopsUpdateBloc,
      bool isModal = false,
      _i60.Key? key,
      List<_i59.PageRouteInfo>? children})
      : super(StoreRoute.name,
            path: 'store-stack-wrapper',
            args: StoreRouteArgs(
                brandBloc: brandBloc,
                shopsUpdateBloc: shopsUpdateBloc,
                isModal: isModal,
                key: key),
            initialChildren: children);

  static const String name = 'StoreRoute';
}

class StoreRouteArgs {
  const StoreRouteArgs(
      {required this.brandBloc,
      required this.shopsUpdateBloc,
      this.isModal = false,
      this.key});

  final _i63.StoreBloc brandBloc;

  final _i64.StoreShopsUpdateBloc shopsUpdateBloc;

  final bool isModal;

  final _i60.Key? key;

  @override
  String toString() {
    return 'StoreRouteArgs{brandBloc: $brandBloc, shopsUpdateBloc: $shopsUpdateBloc, isModal: $isModal, key: $key}';
  }
}

/// generated route for
/// [_i9.SearchStackWrapper]
class SearchStoresRoute extends _i59.PageRouteInfo<void> {
  const SearchStoresRoute({List<_i59.PageRouteInfo>? children})
      : super(SearchStoresRoute.name,
            path: 'search-stack-wrapper', initialChildren: children);

  static const String name = 'SearchStoresRoute';
}

/// generated route for
/// [_i44.MapStackWrapper]
class StoreMapRoute extends _i59.PageRouteInfo<StoreMapRouteArgs> {
  StoreMapRoute(
      {required _i64.StoreShopsUpdateBloc shopsUpdateBloc,
      _i60.Key? key,
      List<_i59.PageRouteInfo>? children})
      : super(StoreMapRoute.name,
            path: 'map-stack-wrapper',
            args: StoreMapRouteArgs(shopsUpdateBloc: shopsUpdateBloc, key: key),
            initialChildren: children);

  static const String name = 'StoreMapRoute';
}

class StoreMapRouteArgs {
  const StoreMapRouteArgs({required this.shopsUpdateBloc, this.key});

  final _i64.StoreShopsUpdateBloc shopsUpdateBloc;

  final _i60.Key? key;

  @override
  String toString() {
    return 'StoreMapRouteArgs{shopsUpdateBloc: $shopsUpdateBloc, key: $key}';
  }
}

/// generated route for
/// [_i45.FeedDetailView]
class FeedDetailView extends _i59.PageRouteInfo<FeedDetailViewArgs> {
  FeedDetailView({required _i65.FeedResp feed})
      : super(FeedDetailView.name,
            path: '', args: FeedDetailViewArgs(feed: feed));

  static const String name = 'FeedDetailView';
}

class FeedDetailViewArgs {
  const FeedDetailViewArgs({required this.feed});

  final _i65.FeedResp feed;

  @override
  String toString() {
    return 'FeedDetailViewArgs{feed: $feed}';
  }
}

/// generated route for
/// [_i46.CategoryStoresView]
class CategoryStoresView extends _i59.PageRouteInfo<CategoryStoresViewArgs> {
  CategoryStoresView({required String categoryName})
      : super(CategoryStoresView.name,
            path: '', args: CategoryStoresViewArgs(categoryName: categoryName));

  static const String name = 'CategoryStoresView';
}

class CategoryStoresViewArgs {
  const CategoryStoresViewArgs({required this.categoryName});

  final String categoryName;

  @override
  String toString() {
    return 'CategoryStoresViewArgs{categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i47.StoreView]
class StoreView extends _i59.PageRouteInfo<void> {
  const StoreView() : super(StoreView.name, path: '');

  static const String name = 'StoreView';
}

/// generated route for
/// [_i48.StoreMapView]
class StoreMapView extends _i59.PageRouteInfo<StoreMapViewArgs> {
  StoreMapView(
      {required String storeName,
      required _i60.Color headerColor,
      required _i60.Color textHeaderColor,
      _i66.LatLng? initialLatLng,
      _i67.FilterRequest? customFilter,
      int? id,
      _i60.Key? key})
      : super(StoreMapView.name,
            path: '',
            args: StoreMapViewArgs(
                storeName: storeName,
                headerColor: headerColor,
                textHeaderColor: textHeaderColor,
                initialLatLng: initialLatLng,
                customFilter: customFilter,
                id: id,
                key: key));

  static const String name = 'StoreMapView';
}

class StoreMapViewArgs {
  const StoreMapViewArgs(
      {required this.storeName,
      required this.headerColor,
      required this.textHeaderColor,
      this.initialLatLng,
      this.customFilter,
      this.id,
      this.key});

  final String storeName;

  final _i60.Color headerColor;

  final _i60.Color textHeaderColor;

  final _i66.LatLng? initialLatLng;

  final _i67.FilterRequest? customFilter;

  final int? id;

  final _i60.Key? key;

  @override
  String toString() {
    return 'StoreMapViewArgs{storeName: $storeName, headerColor: $headerColor, textHeaderColor: $textHeaderColor, initialLatLng: $initialLatLng, customFilter: $customFilter, id: $id, key: $key}';
  }
}

/// generated route for
/// [_i49.StoresView]
class StoresView extends _i59.PageRouteInfo<void> {
  const StoresView() : super(StoresView.name, path: '');

  static const String name = 'StoresView';
}

/// generated route for
/// [_i50.WalletView]
class WalletView extends _i59.PageRouteInfo<void> {
  const WalletView() : super(WalletView.name, path: '');

  static const String name = 'WalletView';
}

/// generated route for
/// [_i51.WalletPaymentDetailsView]
class WalletPaymentDetailsView
    extends _i59.PageRouteInfo<WalletPaymentDetailsViewArgs> {
  WalletPaymentDetailsView(
      {required _i68.OperationOperationItemResponse operation})
      : super(WalletPaymentDetailsView.name,
            path: 'wallet-payment-details-view',
            args: WalletPaymentDetailsViewArgs(operation: operation));

  static const String name = 'WalletPaymentDetailsView';
}

class WalletPaymentDetailsViewArgs {
  const WalletPaymentDetailsViewArgs({required this.operation});

  final _i68.OperationOperationItemResponse operation;

  @override
  String toString() {
    return 'WalletPaymentDetailsViewArgs{operation: $operation}';
  }
}

/// generated route for
/// [_i52.ProfileView]
class ProfileView extends _i59.PageRouteInfo<void> {
  const ProfileView() : super(ProfileView.name, path: '');

  static const String name = 'ProfileView';
}

/// generated route for
/// [_i53.FaqStackWrapper]
class FaqRoute extends _i59.PageRouteInfo<FaqRouteArgs> {
  FaqRoute(
      {required _i69.FaqBloc bloc,
      _i60.Key? key,
      List<_i59.PageRouteInfo>? children})
      : super(FaqRoute.name,
            path: 'faq-stack-wrapper',
            args: FaqRouteArgs(bloc: bloc, key: key),
            initialChildren: children);

  static const String name = 'FaqRoute';
}

class FaqRouteArgs {
  const FaqRouteArgs({required this.bloc, this.key});

  final _i69.FaqBloc bloc;

  final _i60.Key? key;

  @override
  String toString() {
    return 'FaqRouteArgs{bloc: $bloc, key: $key}';
  }
}

/// generated route for
/// [_i54.SendLetterStackWrapper]
class SendLetterRoute extends _i59.PageRouteInfo<void> {
  const SendLetterRoute({List<_i59.PageRouteInfo>? children})
      : super(SendLetterRoute.name,
            path: 'send-letter-stack-wrapper', initialChildren: children);

  static const String name = 'SendLetterRoute';
}

/// generated route for
/// [_i55.RegionSearchView]
class RegionSearchView extends _i59.PageRouteInfo<RegionSearchViewArgs> {
  RegionSearchView({bool isModal = false})
      : super(RegionSearchView.name,
            path: 'region-search-view',
            args: RegionSearchViewArgs(isModal: isModal));

  static const String name = 'RegionSearchView';
}

class RegionSearchViewArgs {
  const RegionSearchViewArgs({this.isModal = false});

  final bool isModal;

  @override
  String toString() {
    return 'RegionSearchViewArgs{isModal: $isModal}';
  }
}

/// generated route for
/// [_i56.LanguageSettingsView]
class LanguageSettingsView
    extends _i59.PageRouteInfo<LanguageSettingsViewArgs> {
  LanguageSettingsView(
      {void Function()? onTap, _i60.BuildContext? profileContext})
      : super(LanguageSettingsView.name,
            path: 'language-settings-view',
            args: LanguageSettingsViewArgs(
                onTap: onTap, profileContext: profileContext));

  static const String name = 'LanguageSettingsView';
}

class LanguageSettingsViewArgs {
  const LanguageSettingsViewArgs({this.onTap, this.profileContext});

  final void Function()? onTap;

  final _i60.BuildContext? profileContext;

  @override
  String toString() {
    return 'LanguageSettingsViewArgs{onTap: $onTap, profileContext: $profileContext}';
  }
}

/// generated route for
/// [_i57.FaqView]
class FaqView extends _i59.PageRouteInfo<void> {
  const FaqView() : super(FaqView.name, path: '');

  static const String name = 'FaqView';
}

/// generated route for
/// [_i58.SendLetterView]
class SendLetterView extends _i59.PageRouteInfo<void> {
  const SendLetterView() : super(SendLetterView.name, path: '');

  static const String name = 'SendLetterView';
}
