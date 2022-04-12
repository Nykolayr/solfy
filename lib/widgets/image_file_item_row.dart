import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/models/image_file_model.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Элемент добавленного файла на экране "Отправить письмо"
class ImageFileItem extends StatelessWidget {
  const ImageFileItem({
    required this.image,
    required this.length,
    this.onTap,
  });

  final ImageFileModel image;
  final double length;
  final void Function(ImageFileModel image)? onTap;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              SolfyIcons.document,
              size: 24,
              color: theme.colors.virtualKeyboardNumbers,
            ),
            SizedBox(width: 12),
            Text(
              image.name,
              style: theme.textStyles.textInputStyle,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              ".png",
              style: theme.textStyles.textInputStyle,
            ),
            SizedBox(width: 4),
            Text(
              (image.length.toStringAsFixed(2) + " Мб").replaceAll(".", ","),
              style: theme.textStyles.textInputStyle.copyWith(color: theme.colors.gray1),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => onTap?.call(image),
          child: Icon(Icons.close, color: theme.colors.buttonPrimary),
        ),
      ],
    );
  }
}
