import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/services/database/client_search_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

enum statusCard { active, block, close }

/// Элемент на экране "Персональная информация"
class PersonalInformationItem extends StatelessWidget {
  const PersonalInformationItem({
    this.title,
    this.secondTitle,
    this.subTitleColor,
    this.subTitleCaption,
    this.editIcon = false,
    this.isHidden = false,
    this.subTitle,
    this.status,
    this.onEditIconTap,
  });

  final String? title;
  final String? secondTitle;
  final Color? subTitleColor;
  final String? subTitleCaption;
  final bool editIcon;
  final bool isHidden;
  final String? subTitle;
  final statusCard? status;
  final void Function()? onEditIconTap;

  @override
  Widget build(BuildContext context) {
    String subTitle = '';
    switch (status) {
      case statusCard.active:
        subTitle = tr('active_card');
        break;
      case statusCard.block:
        subTitle = tr('block_card');
        break;
      case statusCard.close:
        subTitle = tr('close_card');
        break;
      default:
    }
    AppTheme theme = context.read<AppTheme>();

    return isHidden
        ? SizedBox()
        : Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title ?? "",
                          overflow: TextOverflow.ellipsis,
                          style: theme.textStyles.textInputStyle,
                        ),
                        secondTitle != null
                            ? Row(
                                children: [
                                  SizedBox(width: 6.w),
                                  Text(
                                    secondTitle ?? "",
                                    style: theme.textStyles.inputStyle,
                                  ),
                                ],
                              )
                            : SizedBox(),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Text(
                          subTitle,
                          style: theme.textStyles.inputHintText.copyWith(
                              color: status == statusCard.block
                                  ? Colors.red
                                  : status == statusCard.close
                                      ? theme.colors.gray1
                                      : subTitleColor),
                        ),
                        subTitleCaption != null
                            ? Row(
                                children: [
                                  Text(
                                    " · ",
                                    style: theme.textStyles.inputHintText,
                                  ),
                                  Text(
                                    subTitleCaption!,
                                    style:
                                        theme.textStyles.inputHintText.copyWith(
                                      color: theme.colors.subTitleCaptionColor,
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox(),
                      ],
                    ),
                    (status != null && status != statusCard.active)
                        ? Column(
                            children: [
                              const SizedBox(
                                height: 14,
                              ),
                              status == statusCard.close
                                  ? LongButtonWithText(
                                      text: "new_card".tr(),
                                      width: 184.w,
                                      height: 34.r,
                                      onTap: () async {
                                        final response =
                                            await ClientSearchDbService()
                                                .getClientSearchResponse();
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
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          tr('for_unblock'),
                                          style: theme.textStyles.inputHintText,
                                        ),
                                        const SizedBox(
                                          height: 21,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            color: Colors.transparent,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 5,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/svg/tel.svg',
                                                  width: 18,
                                                ),
                                                const SizedBox(
                                                  width: 14,
                                                ),
                                                Text(
                                                  tr('call'),
                                                  style: theme.textStyles
                                                      .textInputStyle,
                                                ),
                                              ],
                                              // write_email
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 21,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            color: Colors.transparent,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 5,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/svg/mail.svg',
                                                  width: 18,
                                                ),
                                                const SizedBox(
                                                  width: 14,
                                                ),
                                                Text(
                                                  tr('write_email'),
                                                  style: theme.textStyles
                                                      .textInputStyle,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                            ],
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                editIcon
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: onEditIconTap,
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Icon(
                                SolfyIcons.pen,
                                color: theme.colors.secondaryItemsColor,
                                size: 18.r,
                              ),
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          );
  }
}
