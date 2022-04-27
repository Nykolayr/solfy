import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/models/api/bank/client_search/exchangeinv2.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/services/database/client_search_db_service.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

class FloatModalLogout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40),
          Text(
            "are_you_sure_want_to_log_out".tr(),
            style: theme.textStyles.mainModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    "no".tr(),
                    style: theme.textStyles.clickableForgotCodeText,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              LongButtonWithText(
                width: 152.w,
                text: "yes".tr(),
                onTap: () async {
                  // ModalHelpers.showLoadingModal(context);
                  // await FormRequestDbService.clearFormData();
                  context.read<QuestionnaireBloc>().add(const Reset());
                  await UserSettingsDbService.clear();
                  await ClientSearchDbService().clear();
                  // await Injector().get<ClientSearchDbService>().clear();
                  // context.read<BankStore>().clearStoredData();
                  final storage = await new FlutterSecureStorage();
                  LocalData().saveJson("passportSeries", '');
                  LocalData().saveJson("passportName", '');
                  LocalData().saveJson("pin_fl", '');
                  LocalData().saveJson("error", '');
                  await storage.deleteAll();

                  // walletStore.clearStore();
                  // Navigator.pop(context);
                  context.router.root.replaceAll([LogoutRoute()]);
                },
              ),
            ],
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
