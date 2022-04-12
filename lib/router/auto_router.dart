import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:solfy_flutter/main.dart';
import 'package:solfy_flutter/views/base_tab_balance_view.dart';
import 'package:solfy_flutter/views/base_tab_feed_view.dart';
import 'package:solfy_flutter/views/base_tab_profile_view.dart';
import 'package:solfy_flutter/views/base_tab_stack_wrapper.dart';
import 'package:solfy_flutter/views/base_tab_stores_view.dart';
import 'package:solfy_flutter/views/base_tab_view.dart';
import 'package:solfy_flutter/views/feed/feed_detail_stack_wrapper.dart';
import 'package:solfy_flutter/views/feed/feed_detail_view.dart';
import 'package:solfy_flutter/views/feed/feeds_view.dart';
import 'package:solfy_flutter/views/onboarding/email_input_stack_wrapper.dart';
import 'package:solfy_flutter/views/onboarding/email_input_view.dart';
import 'package:solfy_flutter/views/onboarding/forgot_pin_code_view.dart';
import 'package:solfy_flutter/views/onboarding/phone_number_input_view.dart';
import 'package:solfy_flutter/views/onboarding/phone_number_stack_wrapper.dart';
import 'package:solfy_flutter/views/onboarding/pin_code_login_stack_wrapper.dart';
import 'package:solfy_flutter/views/onboarding/pin_code_login_view.dart';
import 'package:solfy_flutter/views/onboarding/pin_code_stack_wrapper.dart';
import 'package:solfy_flutter/views/onboarding/pin_code_view.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/address_form_view.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/choosing_filial_form_view.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/choosing_filial_stack_wrapper.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/job_info_form_view.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/personal_information_form_view.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/property_form_view.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/questionnaire_stack_wrapper.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/your_request_complete_waiting_view.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/your_request_view.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/your_request_waiting_chat_view.dart';
import 'package:solfy_flutter/views/onboarding/short_form_view.dart';
import 'package:solfy_flutter/views/onboarding/sms_code_stack_wrapper.dart';
import 'package:solfy_flutter/views/onboarding/sms_code_view.dart';
import 'package:solfy_flutter/views/onboarding/welcome_view.dart';
import 'package:solfy_flutter/views/profile/about_app_view.dart';
import 'package:solfy_flutter/views/profile/biometric_set_stack_wrapper.dart';
import 'package:solfy_flutter/views/profile/biometric_set_view.dart';
import 'package:solfy_flutter/views/profile/change_pin_stack_wrapper.dart';
import 'package:solfy_flutter/views/profile/change_pin_view.dart';
import 'package:solfy_flutter/views/profile/faq_stack_wrapper.dart';
import 'package:solfy_flutter/views/profile/faq_view.dart';
import 'package:solfy_flutter/views/profile/language_settings_view.dart';
import 'package:solfy_flutter/views/profile/personal_information_stack_wrapper.dart';
import 'package:solfy_flutter/views/profile/personal_information_view.dart';
import 'package:solfy_flutter/views/profile/profile_view.dart';
import 'package:solfy_flutter/views/profile/region_search_view.dart';
import 'package:solfy_flutter/views/profile/send_letter_stack_wrapper.dart';
import 'package:solfy_flutter/views/profile/send_letter_view.dart';
import 'package:solfy_flutter/views/stores/category_stores_stack_wrapper.dart';
import 'package:solfy_flutter/views/stores/category_stores_view.dart';
import 'package:solfy_flutter/views/stores/map_stack_wrapper.dart';
import 'package:solfy_flutter/views/stores/search_stack_wrapper.dart';
import 'package:solfy_flutter/views/stores/search_view.dart';
import 'package:solfy_flutter/views/stores/store_map_view.dart';
import 'package:solfy_flutter/views/stores/store_stack_wrapper.dart';
import 'package:solfy_flutter/views/stores/store_view.dart';
import 'package:solfy_flutter/views/stores/stores_view.dart';
import 'package:solfy_flutter/views/wallet/wallet_payment_details_view.dart';
import 'package:solfy_flutter/views/wallet/wallet_view.dart';

// Описание роутов, их оберток и стеков
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage, initial: true),
    AutoRoute(page: MyHomePage, name: "LogoutRoute"),
    AutoRoute(
        page: SmsCodeStackWrapper,
        name: "SmsCodeViewRoute",
        path: 'sms_confirm',
        children: [
          AutoRoute(page: SmsCodeView, initial: true),
        ]),
    AutoRoute(
        page: PhoneNumberStackWrapper,
        name: "PhoneNumberRoute",
        children: [
          AutoRoute(page: PhoneNumberInputView, initial: true),
        ]),
    AutoRoute(
        page: EmailInputStackWrapper,
        name: "EmailInputViewRoute",
        children: [
          AutoRoute(page: EmailInputView, initial: true),
        ]),
    AutoRoute(page: PinCodeStackWrapper, name: "PinCodeViewRoute", children: [
      AutoRoute(page: PinCodeView, initial: true),
    ]),
    AutoRoute(
        page: PinCodeLoginStackWrapper,
        name: "PinCodeLoginViewRoute",
        children: [
          AutoRoute(page: PinCodeLoginView, initial: true),
        ]),
    AutoRoute(
        page: BiometricSetStackWrapper,
        name: "BiometricSetRoute",
        children: [
          AutoRoute(page: BiometricSetView, initial: true),
        ]),
    AutoRoute(page: ChangePinStackWrapper, name: "ChangePinRoute", children: [
      AutoRoute(page: ChangePinView, initial: true),
    ]),
    AutoRoute(page: SearchStackWrapper, name: "SearchRoute", children: [
      AutoRoute(page: SearchView, initial: true),
    ]),
    AutoRoute(page: WelcomeView),
    AutoRoute(page: ForgotPinCodeView),
    AutoRoute(
        page: QuestionnaireStackWrapper,
        name: "QuestionnaireStackRoute",
        children: [
          AutoRoute(page: ShortFormView, initial: true),
          AutoRoute(page: YourRequestWaitingChatView),
          AutoRoute(page: YourRequestView),
          AutoRoute(page: PersonalInformationFormView),
          AutoRoute(page: AddressFormView),
          AutoRoute(page: JobInfoFormView),
          AutoRoute(page: PropertyFormView),
          AutoRoute(
              page: ChoosingFilialStackWrapper,
              name: "ChoosingFilialRoute",
              children: [
                AutoRoute(page: ChoosingFilialFormView, initial: true),
              ]),
          AutoRoute(page: YourRequestCompleteWaitingView),
        ]),
    AutoRoute(
        page: PersonalInformationStackWrapper,
        name: "PersonalInformationRoute",
        children: [
          AutoRoute(page: PersonalInformationView, initial: true),
        ]),
    AutoRoute(page: AboutAppView),
    AutoRoute(page: BaseTabStackWrapper, name: "BaseTabRoute", children: [
      AutoRoute(page: BaseTabView, initial: true, children: [
        AutoRoute(page: BaseTabFeedView, initial: true, children: [
          AutoRoute(page: FeedsView, initial: true),
          AutoRoute(
              page: FeedDetailStackWrapper,
              name: "FeedDetailRoute",
              children: [
                AutoRoute(page: FeedDetailView, initial: true),
              ]),
          AutoRoute(
              page: CategoryStoresStackWrapper,
              name: "BrandsRoute",
              children: [
                AutoRoute(page: CategoryStoresView, initial: true),
              ]),
          AutoRoute(page: StoreStackWrapper, name: "StoreRoute", children: [
            AutoRoute(page: StoreView, initial: true),
          ]),
          AutoRoute(
              page: SearchStackWrapper,
              name: "SearchStoresRoute",
              children: [
                AutoRoute(page: SearchView, initial: true),
              ]),
          AutoRoute(page: MapStackWrapper, name: "StoreMapRoute", children: [
            AutoRoute(page: StoreMapView, initial: true),
          ]),
        ]),
        AutoRoute(page: BaseTabStoresView, children: [
          AutoRoute(page: StoresView, initial: true),
          AutoRoute(
              page: CategoryStoresStackWrapper,
              name: "BrandsRoute",
              children: [
                AutoRoute(page: CategoryStoresView, initial: true),
              ]),
          AutoRoute(
              page: FeedDetailStackWrapper,
              name: "FeedDetailRoute",
              children: [
                AutoRoute(page: FeedDetailView, initial: true),
              ]),
          AutoRoute(page: StoreStackWrapper, name: "StoreRoute", children: [
            AutoRoute(page: StoreView, initial: true),
          ]),
          AutoRoute(
              page: SearchStackWrapper,
              name: "SearchStoresRoute",
              children: [
                AutoRoute(page: SearchView, initial: true),
              ]),
          AutoRoute(page: MapStackWrapper, name: "StoreMapRoute", children: [
            AutoRoute(page: StoreMapView, initial: true),
          ]),
        ]),
        AutoRoute(page: BaseTabBalanceView, children: [
          AutoRoute(page: WalletView, initial: true),
          AutoRoute(page: WalletPaymentDetailsView),
          AutoRoute(
              page: CategoryStoresStackWrapper,
              name: "BrandsRoute",
              children: [
                AutoRoute(page: CategoryStoresView, initial: true),
              ]),
          AutoRoute(page: StoreStackWrapper, name: "StoreRoute", children: [
            AutoRoute(page: StoreView, initial: true),
          ]),
          AutoRoute(page: MapStackWrapper, name: "StoreMapRoute", children: [
            AutoRoute(page: StoreMapView, initial: true),
          ]),
        ]),
        AutoRoute(page: BaseTabProfileView, children: [
          AutoRoute(page: ProfileView, initial: true),
          AutoRoute(page: FaqStackWrapper, name: "FaqRoute", children: [
            AutoRoute(page: FaqView, initial: true),
          ]),
          AutoRoute(
              page: SendLetterStackWrapper,
              name: "SendLetterRoute",
              children: [
                AutoRoute(page: SendLetterView, initial: true),
              ]),
          AutoRoute(page: RegionSearchView),
          AutoRoute(page: LanguageSettingsView),
        ]),
      ]),
    ]),
  ],
)
class $AppRouter {}
