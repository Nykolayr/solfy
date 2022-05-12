import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/models/entities/wallet/wallet_status_view_model.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/services/database/client_search_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/line_status.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Виджет с текущим статусом карты (кошелька)
///
/// [wallet] - кошелек
class CardStatus extends StatelessWidget {
  CardStatus(this.wallet);

  final WalletStatusViewModel wallet;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    Widget buildContent(int currentStage) {
      String st = "questionnaire_accepted_paid";
      st = wallet.status;
      switch (st) {
        case "questionnaire_accepted":
          return LineStatus(
            wallet.title,
            wallet.description,
            lines: 1,
            checkmark: 1,
            marked: 2,
            bottom: wallet.addition,
            buttonGo: () {
              context.router.root.push(
                YourRequestCardWaitingView(
                  insurance_premium: wallet.insurance_premium,
                ),
              );
            },
          );
        case "questionnaire_accepted_paid":
          return LineStatus(
            wallet.title,
            wallet.description,
            lines: 1,
            checkmark: 1,
            marked: 2,
            bottom: wallet.addition,
            buttonGo: () {
              // context.router.push(ChoosingFilialRoute());
              context.router.root.push(
                QuestionnaireStackRoute(
                  children: [ChoosingFilialRoute()],
                ),
              );
            },
          );
        case "questionnaire_card_preparing":
          return LineStatus(
            wallet.title,
            wallet.description,
            lines: 2,
            checkmark: 2,
            marked: 3,
            bottom: wallet.addition,
            time: "2-3 дня",
          );
        case "questionnaire_not_sent":
          return Column(
            children: [
              Text(
                "our_card_solfy".tr(),
                style: theme.textStyles.blackRoboto1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                "fill_form_and_take_our_card".tr(),
                style: theme.textStyles.mediumMainText1,
                textAlign: TextAlign.center,
              ),
              (currentStage - 1) != 0
                  ? Column(
                      children: [
                        SizedBox(height: 16.h),
                        Stack(
                          children: [
                            Container(
                              width: 172.w,
                              height: 4,
                              decoration: BoxDecoration(
                                color: theme.colors.gray2,
                                borderRadius: BorderRadius.circular(42),
                              ),
                            ),
                            Container(
                              width: (172 / 4 * (currentStage - 1)).w,
                              height: 4,
                              decoration: BoxDecoration(
                                color: theme.colors.secondaryItemsColor,
                                borderRadius: BorderRadius.circular(42),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          "remaining_stages".plural(5 - currentStage),
                          style: theme.textStyles.mediumMainText1,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : SizedBox(),
              SizedBox(height: 25.h),
              LongButtonWithText(
                text: currentStage > 1
                    ? "continue_registration".tr()
                    : "order_card".tr(),
                width: currentStage > 1 ? 201.w : 137.w,
                height: 34.r,
                onTap: () async {
                  final response =
                      await ClientSearchDbService().getClientSearchResponse();
                  if (response == null) {
                    context.router.root.push(
                      QuestionnaireStackRoute(
                        children: [ShortFormView()],
                      ),
                    );
                  } else {
                    context.router.root.push(
                      QuestionnaireStackRoute(
                        children: [YourRequestView()],
                      ),
                    );
                  }
                },
                fontSize: 14.sp,
              ),
            ],
          );
        case "questionnaire_sent":
          return LineStatus(
            wallet.title,
            wallet.description,
            time: "1-2 часа",
          );
        case "questionnaire_card_ready":
          return LineStatus(
            wallet.title,
            wallet.description,
            lines: 2,
            checkmark: 3,
            marked: 3,
            bottom: wallet.addition,
          );
        case "questionnaire_card_received":
          return LineStatus(
            wallet.title,
            wallet.description,
            lines: 3,
            checkmark: 3,
            marked: 4,
          );
        case "questionnaire_rejected":
          return Column(
            children: [
              Text(
                wallet.title,
                style: theme.textStyles.blackRoboto1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                wallet.description,
                style: theme.textStyles.mediumMainText1,
                textAlign: TextAlign.center,
              ),
            ],
          );
        case "questionnaire_refused":
          return Column(
            children: [
              Text(
                wallet.title,
                style: theme.textStyles.blackRoboto1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                wallet.description,
                style: theme.textStyles.mediumMainText1,
                textAlign: TextAlign.center,
              ),
            ],
          );
        default:
          return SizedBox();
      }
    }

    return BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
      builder: (context, state) {
        final currentStage =
            state is QuestionnaireFoundSuccess ? state.currentStage : 1;
        return Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12.h),
              wallet.status != "questionnaire_rejected"
                  ? Container(
                      decoration: !(wallet.status == 'questionnaire_rejected' ||
                              wallet.status == 'questionnaire_refused')
                          ? BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 16,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            )
                          : null,
                      child: wallet.status == 'questionnaire_rejected' ||
                              wallet.status == 'questionnaire_refused'
                          ? Image.asset('assets/Error.png')
                          : Image.asset("assets/Bitmap.png",
                              width: 105.63.r, height: 65.05.r),
                    )
                  : Icon(
                      SolfyIcons.info,
                      size: 48.r,
                      color: theme.colors.gray1,
                    ),
              SizedBox(height: 18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: buildContent(currentStage),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        );
      },
    );
  }
}
