import 'package:flutter/material.dart';
import 'package:aplikasi_tiket_wisata/theme/app_theme.dart';

class NeoContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;

  const NeoContainer({
    super.key,
    required this.child,
    this.color,
    this.borderRadius = 8,
    this.padding,
    this.margin,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: AppTheme.neoBrutalistBox(
        color: color ?? Colors.white,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
