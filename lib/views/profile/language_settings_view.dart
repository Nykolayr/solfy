import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/initial_bloc/initial_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Экран с изменением языка приложения
class LanguageSettingsView extends StatefulWidget {
  const LanguageSettingsView({
    this.onTap,
    this.profileContext,
  });

  final void Function()? onTap;
  final BuildContext? profileContext;
  @override
  _LanguageSettingsViewState createState() => _LanguageSettingsViewState();
}

class _LanguageSettingsViewState extends State<LanguageSettingsView> {
  late bool ru;
  late bool uz;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    ru = context.locale.toString() == 'ru';
    uz = context.locale.toString() == 'uz';
  }

  @override
  Widget build(BuildContext context) {
    context.locale;
    AppTheme theme = context.read<AppTheme>();

    void toggleUz() async {
      setState(() {
        ru = false;
        uz = true;
        context.setLocale(Locale('uz'));
      });
      context.read<LanguageChangerBloc>().add(const ChangeLanguage("uz"));
    }

    void toggleRu() async {
      setState(() {
        ru = true;
        uz = false;
        context.setLocale(Locale('ru'));
      });
      context.read<LanguageChangerBloc>().add(const ChangeLanguage("ru"));
    }

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      setState(() {});
    });

    return BlocListener<InitialBloc, InitialState>(
      listener: (context, state) async {
        if (state is Loading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is SuccessDownload) {
          await context.router.root.pop();
        }
        if (state is UnsuccessDownload) {
          await context.router.root.pop();
          ModalHelpers.showError(context, state.errors);
        }
      },
      child: Scaffold(
        appBar: HeaderAppBar(
          header: "app_language_str".tr(),
          onDefaultLeadingTap: (context) async {
            Navigator.pop(context);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              GestureDetector(
                onTap: toggleRu,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Русский", style: theme.textStyles.textInputStyle),
                    ru
                        ? Icon(SolfyIcons.checkmark,
                            color: theme.colors.secondaryItemsColor, size: 16)
                        : SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              GestureDetector(
                onTap: toggleUz,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("O’zbek", style: theme.textStyles.textInputStyle),
                    uz
                        ? Icon(SolfyIcons.checkmark,
                            color: theme.colors.secondaryItemsColor, size: 16)
                        : SizedBox()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
