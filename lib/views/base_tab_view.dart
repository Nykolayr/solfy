import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/bloc/settings_bloc/settings_bloc.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart' as auto;
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/card/bloc/card_bloc.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Боттом табы приложения
class BaseTabView extends StatefulWidget {
  BaseTabView({Key? key}) : super(key: key);

  @override
  _BaseTabViewState createState() => _BaseTabViewState();
}

class _BaseTabViewState extends State<BaseTabView> {
  @override
  void initState() {
    // Обновляем настройки с сервера
    context.read<SettingsBloc>().add(const UpdateSettings());
    // Обновляем данные об анкете, если уже не обновлены
    final bloc = context.read<QuestionnaireBloc>();
    if (!(bloc.state is QuestionnaireFoundSuccess)) {
      bloc.add(ClientSearch());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    Widget getIcon(IconData iconData, double iconSize) {
      return Padding(
        padding: EdgeInsets.only(bottom: 4.r),
        child: Icon(iconData, size: iconSize),
      );
    }

    return AutoTabsScaffold(
      // lazyLoad: false,
      routes: [
        auto.BaseTabFeedView(),
        auto.BaseTabStoresView(),
        auto.BaseTabBalanceView(),
        auto.BaseTabProfileView(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BlocBuilder<LanguageChangerBloc, LanguageChangerState>(
          builder: (context, state) {
            if (state is LanguageChanged) {
              Timer(Duration(milliseconds: 100), () => setState(() {}));
            }
            return BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) async {
                switch (index) {
                  case 0:
                    if (tabsRouter.activeIndex != index) {
                      print('console === FeedsView begin');
                      context.read<CardBloc>().add(WalletCardUpdate());
                      context
                          .read<BaseTabUpdaterBloc>()
                          .add(const UpdateFeed());
                    }
                    break;
                  case 1:
                    if (tabsRouter.activeIndex != index) {
                      context
                          .read<BaseTabUpdaterBloc>()
                          .add(const UpdateCatalog());
                    }
                    break;
                  case 2:
                    if (tabsRouter.activeIndex != index) {
                      print('console === FeedsView begin');
                      context.read<CardBloc>().add(WalletCardUpdate());
                      context
                          .read<BaseTabUpdaterBloc>()
                          .add(const UpdateWallet());
                    }
                    break;
                  case 3:
                    if (tabsRouter.activeIndex != index) {
                      context
                          .read<BaseTabUpdaterBloc>()
                          .add(const UpdateProfile());
                    }
                    break;
                  default:
                }
                switch (index) {
                  case 0:
                    if (tabsRouter.activeIndex == 0) {
                      context.navigateTo(auto.BaseTabView(children: [
                        auto.BaseTabFeedView(children: [auto.FeedsView()])
                      ]));
                    }
                    break;
                  case 1:
                    if (tabsRouter.activeIndex == 1) {
                      context.navigateTo(auto.BaseTabView(children: [
                        auto.BaseTabStoresView(children: [auto.StoresView()])
                      ]));
                    }
                    break;
                  case 2:
                    if (tabsRouter.activeIndex == 2) {
                      context.navigateTo(auto.BaseTabView(children: [
                        auto.BaseTabBalanceView(children: [auto.WalletView()])
                      ]));
                    }
                    break;
                  case 3:
                    if (tabsRouter.activeIndex == 3) {
                      context.navigateTo(auto.BaseTabView(children: [
                        auto.BaseTabProfileView(children: [auto.ProfileView()])
                      ]));
                    }
                    break;
                  default:
                }
                tabsRouter.setActiveIndex(index);
              },
              backgroundColor: Colors.white,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              enableFeedback: false,
              selectedLabelStyle: theme.textStyles.bottomBarActiveLabelText,
              unselectedLabelStyle: theme.textStyles.bottomBarInactiveLabelText,
              selectedItemColor: theme.colors.buttonPrimary,
              unselectedItemColor: theme.colors.virtualKeyboardNumbers,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: getIcon(SolfyIcons.news_feed, 22.r),
                  label: 'menu_feed'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: getIcon(SolfyIcons.shops, 22.r),
                  label: 'menu_shops'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: getIcon(SolfyIcons.balance, 22.r),
                  label: 'menu_balance'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: getIcon(SolfyIcons.profile, 22.r),
                  label: 'menu_profile'.tr(),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
