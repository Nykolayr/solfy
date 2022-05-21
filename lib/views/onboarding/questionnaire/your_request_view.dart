import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/request_list_item.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Экран с промежуточными итогами анкеты
class YourRequestView extends StatefulWidget {
  const YourRequestView({Key? key}) : super(key: key);

  @override
  _YourRequestViewState createState() => _YourRequestViewState();
}

class _YourRequestViewState extends State<YourRequestView> {
  @override
  void initState() {
    final bloc = context.read<QuestionnaireBloc>();
    if (!(bloc.state is QuestionnaireFoundSuccess)) {
      context.read<QuestionnaireBloc>().add(ClientSearch());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
      builder: (context, state) {
        final currentStage =
            state is QuestionnaireFoundSuccess ? state.currentStage : 1;
        return Scaffold(
          appBar: AppBar(
            leading: BaseIconGesturesWrapper(
              onTap: () => context.router.replaceAll([BaseTabRoute()]),
              child: Icon(
                SolfyIcons.close,
                color: theme.colors.secondaryItemsColor,
                size: 24.w,
              ),
              iconSize: 24,
            ),
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
          ),
          body: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(),
                    SizedBox(height: 16.h),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "your_application".tr(),
                        style: theme.textStyles.mainBigText,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "your_application_caption".tr(),
                        style: theme.textStyles.mainModalText,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    RequestListItem(
                      text: "Персональные данные",
                      isCompleted: currentStage > 1,
                      onTap: () =>
                          context.router.push(PersonalInformationFormView()),
                      isArrowAtEnd: true,
                      defaultIconSize: 20.h,
                    ),
                    RequestListItem(
                      text: "Место жительства",
                      onTap: () => currentStage > 1
                          ? context.router.push(AddressFormView())
                          : null,
                      isCompleted: currentStage > 2,
                      isArrowAtEnd: currentStage > 1,
                      defaultIconSize: 20.h,
                    ),
                    RequestListItem(
                      text: "Сведения о работе и доходах",
                      onTap: () => currentStage > 2
                          ? context.router.push(JobInfoFormView())
                          : null,
                      isCompleted: currentStage > 3,
                      isArrowAtEnd: currentStage > 2,
                      defaultIconSize: 20.h,
                    ),
                    RequestListItem(
                      text: "Сведения об имуществе",
                      onTap: () => currentStage > 3
                          ? context.router.push(PropertyFormView())
                          : null,
                      isCompleted: currentStage > 4,
                      isArrowAtEnd: currentStage > 3,
                      defaultIconSize: 20.h,
                    ),
                    // RequestListItem(
                    //   text: "Карта для автопогашения",
                    //   isCompleted: currentStage > 5,
                    //   isArrowAtEnd: currentStage > 4,
                    //   defaultIconSize: 20.h,
                    // ),
                    // RequestListItem(
                    //   text: "Отделение для получения карты",
                    //   onTap: () => currentStage > 5
                    //       ? context.router.root.push(
                    //           QuestionnaireStackRoute(
                    //             children: [ChoosingFilialRoute()],
                    //           ),
                    //         )
                    //       : null,
                    //   isCompleted: currentStage > 6,
                    //   isArrowAtEnd: currentStage > 5,
                    //   defaultIconSize: 20.h,
                    // ),
                  ],
                ),
                Column(
                  children: [
                    LongButtonWithText(
                      text: currentStage > 1
                          ? tr("continue_editing")
                          : "fill_the_form".tr(),
                      onTap: () async {
                        switch (currentStage) {
                          case 1:
                            context.router.push(PersonalInformationFormView());
                            break;
                          case 2:
                            context.router.push(AddressFormView());
                            break;
                          case 3:
                            context.router.push(JobInfoFormView());
                            break;
                          case 4:
                            context.router.push(PropertyFormView());
                            break;
                          case 5:
                            break;
                          case 6:
                            context.router.root.push(
                              QuestionnaireStackRoute(
                                children: [ChoosingFilialRoute()],
                              ),
                            );
                            break;
                          default:
                        }
                      },
                    ),
                    SizedBox(height: 24.h),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
