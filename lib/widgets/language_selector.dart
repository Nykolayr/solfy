import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/logo_with_text.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector(this.callback);

  final void Function() callback;
  @override
  _LanguageSelectorState createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
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
    AppTheme theme = context.read<AppTheme>();

    void toggleRu() async {
      final dio = Injector().get<Dio>();
      dio.options.headers["language"] = 'uz';
      setState(() {
        ru = false;
        uz = true;
        context.setLocale(Locale('uz'));
        UserSettingsDbService.saveLocale('uz');
        widget.callback.call();
      });
      ModalHelpers.showLoadingModal(context);
      Timer(Duration(seconds: 2), () async {
        await context.setLocale(Locale('uz'));
        UserSettingsDbService.saveLocale('uz');
        widget.callback.call();
        context.router.root.pop();
      });
    }

    void toggleUz() async {
      final dio = Injector().get<Dio>();
      dio.options.headers["language"] = 'ru';
      setState(() {
        ru = true;
        uz = false;
        context.setLocale(Locale('ru'));
        UserSettingsDbService.saveLocale('ru');
        widget.callback.call();
      });
      ModalHelpers.showLoadingModal(context);
      Timer(Duration(seconds: 2), () async {
        await context.setLocale(Locale('ru'));
        UserSettingsDbService.saveLocale('ru');
        widget.callback.call();
        context.router.root.pop();
      });
    }

    return Container(
      width: 344.w,
      height: 109,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: toggleRu,
            child: LogoWithText(theme.icons.uzLogo, "O’zbekcha", uz),
          ),
          GestureDetector(
            onTap: toggleUz,
            child: LogoWithText(theme.icons.ruLogo, "Русский", ru),
          ),
        ],
      ),
    );
  }
}
