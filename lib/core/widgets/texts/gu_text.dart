import 'package:flutter/material.dart';
import 'package:groupup/core/extensions/gu_theme_extension.dart';

class GUText extends StatelessWidget {
  const GUText.header({
    required this.text,
    this.fontSize = 20,
    this.width,
    this.fontWeight = FontWeight.bold,
    super.key,
  });

  const GUText.body({
    required this.text,
    this.fontSize = 16,
    this.width,
    this.fontWeight = FontWeight.w500,
    super.key,
  });

  final String text;
  final double? fontSize;
  final double? width;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        style: context.theme.textTheme.bodyLarge?.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
