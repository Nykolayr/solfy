import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/faq_bloc/faq_bloc.dart';
import 'package:solfy_flutter/models/api/profile/faq/faq_response.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/custom_divider.dart';
import 'package:solfy_flutter/widgets/expanded_animation.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Экран "Популярные вопросы"
class FaqView extends StatefulWidget {
  @override
  _FaqViewState createState() => _FaqViewState();
}

class _FaqViewState extends State<FaqView> {
  List<bool> _expandFlags = [];

  @override
  void initState() {
    final state = context.read<FaqBloc>().state;
    if (state is FaqSuccess) {
      _expandFlags = List.generate(state.faq.faq?.questions?.length ?? 0, (index) => false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    List<Widget> generateContent(FaqResp faq) {
      return List.generate(
        faq.faq?.groups?.length ?? 0,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDivider(12),
            Text(faq.faq?.groups?[index].title ?? "", style: theme.textStyles.headerSubtitleText),
            SizedBox(height: 22.h),
            Column(
              children: List.generate(
                faq.faq?.questions?.length ?? 0,
                (questionIndex) => faq.faq?.questions?[questionIndex].groupId ==
                        faq.faq?.groups?[index].id
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          faq.faq?.questions?.firstWhere(
                                      (el) => el.groupId == faq.faq?.groups?[index].id) !=
                                  faq.faq?.questions?[questionIndex]
                              ? CustomDivider(12)
                              : SizedBox(),
                          GestureDetector(
                            onTap: () => setState(
                                () => _expandFlags[questionIndex] = !_expandFlags[questionIndex]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 275.w,
                                  child: Text(
                                    faq.faq?.questions?[questionIndex].question ?? "",
                                    style: _expandFlags[questionIndex]
                                        ? theme.textStyles.textInputStyle
                                        : theme.textStyles.inputStyle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: _expandFlags[questionIndex]
                                      ? Icon(
                                          SolfyIcons.arrow_up,
                                          color: theme.colors.virtualKeyboardNumbers,
                                          size: 9.r,
                                        )
                                      : Icon(
                                          SolfyIcons.arrow_down,
                                          color: theme.colors.virtualKeyboardNumbers,
                                          size: 9.r,
                                        ),
                                ),
                              ],
                            ),
                          ),
                          ExpandedAnimation(
                            expand: _expandFlags[questionIndex],
                            child: Column(
                              children: [
                                SizedBox(height: 8.h),
                                Text(faq.faq?.questions?[questionIndex].answer ?? "",
                                    style: theme.textStyles.faqAnswerText),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
              ),
            ),
          ],
        ),
      );
    }

    return BlocBuilder<FaqBloc, FaqState>(
      builder: (context, state) {
        if (state is FaqSuccess) {
          return Scaffold(
            appBar: HeaderAppBar(header: "help".tr()),
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...generateContent(state.faq),
                        SizedBox(height: 24.h),
                      ],
                    ),
                  ),
                ),
              ],
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
    );
  }
}
