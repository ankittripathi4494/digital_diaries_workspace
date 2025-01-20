import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget {
  static assetImageWidget(
      {required String? urlString,
      double? widthSize,
      double? heightSize,
      Color? backgroundColor,
      bool isCirculrar = false}) {
    return (urlString != null)
        ? Container(
            width: (widthSize != null) ? widthSize : null,
            height: (heightSize != null) ? heightSize : null,
            decoration: BoxDecoration(
                color: backgroundColor,
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(urlString))),
          )
        : null;
  }

  static networkImageWidget(
      {required String? urlString,
      double? widthSize,
      double? heightSize,
      Color? backgroundColor,
      bool isCirculrar = false}) {
    return (urlString != null)
        ? CachedNetworkImage(
            imageUrl: urlString,
            fadeOutCurve: Curves.bounceOut,
            alignment: Alignment.topLeft,
            repeat: ImageRepeat.repeatY,
            fit: BoxFit.fill,
            imageBuilder: (context, imageProvider) => Container(
              width: (widthSize != null) ? widthSize : null,
              height: (heightSize != null) ? heightSize : null,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  image: DecorationImage(
                      fit: BoxFit.contain, image: imageProvider)),
            ),
            progressIndicatorBuilder: (context, url, progress) =>
                const CircularProgressIndicator(),
            errorWidget: (context, child, loadingProgress) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: widthSize,
                height: heightSize,
                child: CircleAvatar(
                  backgroundColor: backgroundColor,
                  child: const Center(
                    child: Icon(Icons.person),
                  ),
                ),
              );
            },
          )
        : null;
  }
}
