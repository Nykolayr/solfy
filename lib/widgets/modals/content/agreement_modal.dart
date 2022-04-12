import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class AgreementModal extends StatelessWidget {
  const AgreementModal(this.type);

  final AgreementType type;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    StaticRepository staticRepository = context.read<StaticRepository>();

    return Scaffold(
      appBar: AppBar(
        leading: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: BaseIconGesturesWrapper(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      SolfyIcons.close,
                      color: theme.colors.secondaryItemsColor,
                      size: 24.r,
                    ),
                    iconSize: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Html(
              data: staticRepository.agreements[type],
              onLinkTap: (link, context, map, el) async {
                if (await canLaunch(link ?? "")) {
                  await launch(
                    link ?? "",
                    forceSafariVC: true,
                  );
                } else {
                  print('Could not launch $link');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
