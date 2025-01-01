import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/extensions/context.dart';
import '../../utils/styles/app_color.dart';

class PersistentCachedNetworkImage extends StatelessWidget {
  const PersistentCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
  });
  final String imageUrl;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final widthSize = width ?? double.infinity;
    final heightSize =
        widthSize == double.infinity ? context.deviceWidth * 0.4 : height;

    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: widthSize,
      height: heightSize,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (_, __, DownloadProgress? loadingProgress) {
        if (loadingProgress != null) {
          return Center(
            child: CircularProgressIndicator(value: loadingProgress.progress),
          );
        }
        return const SizedBox.shrink();
      },
      errorWidget: (_, __, ___) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColor.yellow50Background,
              ),
            ),
            const Icon(
              Icons.error,
              color: AppColor.red,
            ),
          ],
        );
      },
    );
  }
}
