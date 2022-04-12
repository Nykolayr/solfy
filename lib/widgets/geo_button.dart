import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class GeoButton extends StatelessWidget {
  const GeoButton({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: RawMaterialButton(
              onPressed: () {
                onTap();
              },
              elevation: 2.0,
              fillColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(right: 3, top: 3),
                child: Icon(
                  SolfyIcons.geo_1,
                  color: theme.colors.buttonPrimary,
                  size: 20,
                ),
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
          )
        ],
      ),
    );
  }
}
