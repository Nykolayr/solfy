import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';

/// Строка с категорий списка категорий
///
/// [name] - название категории
///
/// [logo] - логотип категории
class CategoryRowItem extends StatelessWidget {
  const CategoryRowItem({
    required this.name,
    required this.logo,
    this.padding,
  });

  final String name;
  final String logo;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: logo,
          width: 22.w,
          placeholder: (context, url) => Container(
            width: 22.w,
            child: LoadingRingAnimation(ringSize: 1),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        SizedBox(width: 12.w),
        Text(
          name,
          style: theme.textStyles.textInputStyle,
        ),
      ],
    );
  }
}
