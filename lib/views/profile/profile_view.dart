import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/biometric_set_bloc/biometric_set_bloc.dart';
import 'package:solfy_flutter/bloc/faq_bloc/faq_bloc.dart';
import 'package:solfy_flutter/bloc/profile_bloc/profile_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/request_list_item.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:url_launcher/url_launcher.dart';

/// Главный экран с отображением меню приложения
class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool biometricEnabled = false;
  @override
  void initState() {
    context.read<ProfileBloc>().add(GetProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocListener<FaqBloc, FaqState>(
      listener: (context, state) async {
        if (state is FaqLoading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is FaqError) {
          await context.router.root.pop();
          ModalHelpers.showError(context, state.errors);
        }
        if (state is FaqSuccess) {
          await context.router.root.pop();
          context.router.push(FaqRoute(bloc: context.read<FaqBloc>()));
        }
      },
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is GetProfileError) {
            ModalHelpers.showError(context, state.errors);
          }
        },
        builder: (context, state) {
          if (state is GetProfileSuccess) {
            return SafeArea(
              child: Scaffold(
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/welcomeLogo.png",
                                  width: 56.r,
                                  height: 56.r,
                                  color: Color(int.parse("0xffE3E5E8")),
                                ),
                                GestureDetector(
                                  onTap: () => ModalHelpers.showLogoutModal(context),
                                  child: Text(
                                    "log_out".tr(),
                                    style: theme.textStyles.profileClickableText,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: 16),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        state.profile.firstName != null &&
                                                state.profile.lastName != null
                                            ? state.profile.firstName! +
                                                " " +
                                                state.profile.lastName!
                                            : state.profile.phone ?? "",
                                        style: theme.textStyles.mainModalText,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    RequestListItem(
                                      text: "Персональная информация",
                                      onTap: () async {
                                        context.router.push(PersonalInformationRoute());
                                      },
                                      isCircleAtTextEnd: state.profile.emailIsConfirmed != null
                                          ? !state.profile.emailIsConfirmed!
                                              ? true
                                              : false
                                          : false,
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIconSize: 24.sp,
                                    ),
                                    SizedBox(height: 8.h),
                                    Divider(height: 0),
                                    SizedBox(height: 12.h),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "help_center".tr(),
                                        style: theme.textStyles.profileTitleText,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    RequestListItem(
                                      text: "popular_questions".tr(),
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIcon: SolfyIcons.question,
                                      onTap: () async {
                                        if (context.read<FaqBloc>().state is FaqSuccess) {
                                          context.router
                                              .push(FaqRoute(bloc: context.read<FaqBloc>()));
                                        } else {
                                          context.read<FaqBloc>().add(const GetFaq());
                                        }
                                      },
                                      defaultIconSize: 20.sp,
                                    ),
                                    RequestListItem(
                                      text: "make_a_call".tr(),
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIcon: SolfyIcons.telephone,
                                      onTap: () async {
                                        if (await canLaunch("tel://2143242344")) {
                                          await launch("tel://2143242344");
                                        } else {
                                          print('Could not launch "tel://2143242344"');
                                        }
                                      },
                                      defaultIconSize: 20.sp,
                                    ),
                                    RequestListItem(
                                      text: "write_message".tr(),
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIcon: SolfyIcons.mail,
                                      defaultIconSize: 16.sp,
                                      onTap: () {
                                        context.router.push(SendLetterRoute());
                                      },
                                    ),
                                    SizedBox(height: 8.h),
                                    Divider(height: 0),
                                    SizedBox(height: 12.h),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "settings".tr(),
                                        style: theme.textStyles.profileTitleText,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    RequestListItem(
                                      text: "region".tr(),
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIcon: SolfyIcons.geolocation,
                                      subTitle: state.isMyLocationEnabled
                                          ? "Рядом со мной"
                                          : state.profile.city?.value,
                                      onTap: () => context.router.push(RegionSearchView()),
                                      defaultIconSize: 20.sp,
                                    ),
                                    RequestListItem(
                                      text: "app_language".tr(),
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIcon: SolfyIcons.network,
                                      subTitle: context.locale.languageCode == 'ru'
                                          ? 'Русский'
                                          : 'O’zbek',
                                      onTap: () => context.router.push(LanguageSettingsView()),
                                      defaultIconSize: 20.sp,
                                    ),
                                    RequestListItem(
                                      text: "log_in_with_biometry".tr(),
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIcon: SolfyIcons.touchid,
                                      defaultIconSize: 22.sp,
                                      subTitle: state.isBiometricEnabled ? "Включен" : "Выключен",
                                      suffix: Switch(
                                        activeColor: theme.colors.buttonPrimary,
                                        value: state.isBiometricEnabled,
                                        onChanged: (flag) async {
                                          if (!flag) {
                                            context
                                                .read<ProfileBloc>()
                                                .add(const DisableBiometric());
                                          } else {
                                            var localAuth = LocalAuthentication();
                                            final canCheck = await localAuth.canCheckBiometrics;
                                            final isDeviceSupported =
                                                await localAuth.isDeviceSupported();
                                            if (canCheck && isDeviceSupported) {
                                              context.router.push(BiometricSetRoute(
                                                  biometricBloc: context.read<BiometricSetBloc>()));
                                            }
                                          }
                                        },
                                      ),
                                    ),
                                    RequestListItem(
                                      text: "change_access_code".tr(),
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIcon: SolfyIcons.lock,
                                      onTap: () => context.router.push(ChangePinRoute()),
                                      defaultIconSize: 20.sp,
                                    ),
                                    SizedBox(height: 8.h),
                                    Divider(height: 0),
                                    SizedBox(height: 12.h),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "application".tr(),
                                        style: theme.textStyles.profileTitleText,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    RequestListItem(
                                      text: "about_app".tr(),
                                      defaultIconColor: theme.colors.secondaryItemsColor,
                                      defaultIcon: SolfyIcons.info_thick,
                                      onTap: () => context.router.push(AboutAppView()),
                                      defaultIconSize: 20.sp,
                                    ),
                                    SizedBox(height: 4),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadingRingAnimation(),
              ],
            ),
          );
        },
      ),
    );
  }
}
