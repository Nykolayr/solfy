import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_pixels/image_pixels.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/feed_bloc/feed_bloc.dart';
import 'package:solfy_flutter/models/entities/feeds/feed_item_view_model.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Виджет новости в ленте
class FeedShortItem extends StatelessWidget {
  const FeedShortItem(
    this.feedItem, {
    this.categoriesMode = false,
    this.customImageHeight,
  });

  final FeedItemViewModel feedItem;
  final double? customImageHeight;
  final bool categoriesMode;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      onTap: () async {
        if (feedItem.id != null) {
          context.read<FeedBloc>().add(GetFeed(feedItem.id!.toString()));
        }
      },
      child: Container(
        margin: categoriesMode
            ? EdgeInsets.symmetric(horizontal: 8.w)
            : EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            feedItem.image != null
                ? Stack(
                    children: [
                      CachedNetworkImage(
                        height: customImageHeight ?? 140.h,
                        width: double.infinity,
                        imageUrl: feedItem.image!,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.fill,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.05),
                              width: 1,
                            ),
                          ),
                        ),
                        placeholder: (context, url) => LoadingRingAnimation(lineWidth: 1),
                        errorWidget: (context, url, error) => Icon(SolfyIcons.solfy_smile),
                      ),
                      feedItem.brandLogo != null && feedItem.brandLogo != ""
                          ? Padding(
                              padding: EdgeInsets.all(12.r),
                              child: Container(
                                width: 56.r,
                                height: 56.r,
                                child: CachedNetworkImage(
                                  imageUrl: feedItem.brandLogo!,
                                  imageBuilder: (context, imageProvider) {
                                    return ImagePixels(
                                        imageProvider: imageProvider,
                                        builder: (context, info) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              image: DecorationImage(
                                                image: imageProvider,
                                                scale: info.height == 48 ? 1.8 : 1.0,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(50.r),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  placeholder: (context, url) => CircularProgressIndicator(
                                    color: theme.colors.virtualKeyboardNumbers,
                                    strokeWidth: 1,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(SolfyIcons.solfy_smile),
                                ),
                              ),
                            )
                          : SizedBox(),
                    ],
                  )
                : SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12.h),
                      Text(
                        feedItem.title ?? "",
                        maxLines: categoriesMode ? 2 : null,
                        style: theme.textStyles.blackRoboto1,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        feedItem.shortDescription ?? "",
                        maxLines: categoriesMode ? 2 : null,
                        style: theme.textStyles.mediumMainText1,
                      ),
                      categoriesMode
                          ? SizedBox()
                          : Column(
                              children: [
                                SizedBox(height: 24.h),
                                Text(
                                  feedItem.createdAt ?? "",
                                  style: theme.textStyles.lightCaptionText,
                                ),
                              ],
                            ),
                      SizedBox(height: 12.h),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
