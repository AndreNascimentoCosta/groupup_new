import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GUIcon extends StatelessWidget {
  const GUIcon(
    this.icon, {
    this.height,
    this.width,
    this.fit,
    this.color,
    super.key,
  });

  final String icon;

  final double? height;

  final double? width;

  final BoxFit? fit;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (icon.contains('svg')) {
      return SvgPicture.asset(
        icon,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      );
    }
    return Image.asset(
      icon,
      height: height,
      width: width,
      fit: fit ?? BoxFit.contain,
      color: color,
    );
  }
}
