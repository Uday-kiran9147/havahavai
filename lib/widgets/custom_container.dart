// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
    this.borderRadiusGeometry,
    this.borderWidth,
    this.color,
  }) : super(key: key);

  final double width;
  final double height;
  final Widget child;
  BorderRadiusGeometry? borderRadiusGeometry;
  BoxBorder? borderWidth;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? AppTheme.white,
          border: borderWidth ?? UI.borderline,
          borderRadius: borderRadiusGeometry ?? UI.borderRadius12,
        ),
        child: child);
  }
}
