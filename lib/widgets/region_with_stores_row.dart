import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/entities/catalog/catalog_info_view_model.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Виджет для отображения информации о регионе и загруженных магазинах
///
/// [info] - информация с сервера
class RegionWithStoresRow extends StatelessWidget {
  const RegionWithStoresRow(this.info);

  final CatalogInfoViewModel info;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    int numberOfStores = int.tryParse(info.total?.split(' ')[0] ?? '') ?? 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => ModalHelpers.showRegionModal(context),
          child: Row(
            children: [
              Icon(
                SolfyIcons.geo,
                color: theme.colors.buttonPrimary,
                size: 12.r,
              ),
              SizedBox(width: 4.w),
              info.subtitle == null
                  ? Text(info.title ?? "", style: theme.textStyles.descriptionTextClickable)
                  : Row(
                      children: [
                        Text(info.title ?? "", style: theme.textStyles.descriptionTextClickable),
                        Text(" · ", style: theme.textStyles.inputHintText),
                        Text(info.subtitle ?? "", style: theme.textStyles.inputHintText),
                      ],
                    ),
            ],
          ),
        ),
        Text(numberOfStores > 0 ? info.total ?? "" : "", style: theme.textStyles.inputHintText),
      ],
    );
  }
}
