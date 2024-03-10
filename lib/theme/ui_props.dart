import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:havahavai/theme/color_theme.dart';

class UI {
  // fonts 11,12,14,16,20
  static const body16 = TextStyle(
      fontSize: 16, color: AppTheme.black, fontWeight: FontWeight.w500);
  static const bodyBlack14 = TextStyle(
      fontSize: 14, color: AppTheme.black, fontWeight: FontWeight.w600);
  static const bodyWhite14 = TextStyle(
      fontSize: 14, color: AppTheme.white, fontWeight: FontWeight.w600);
  static const bodyGrey14 = TextStyle(
    fontSize: 14,
    color: AppTheme.grey1,
  );
  static const body12 = TextStyle(fontSize: 12, color: AppTheme.white);
  static const bodyGrey12 = TextStyle(fontSize: 12, color: AppTheme.grey1);
  static const bodyWhite16 = TextStyle(
      fontSize: 16, color: AppTheme.white, fontWeight: FontWeight.w500);
  static const bodyBlack16 = TextStyle(
      fontSize: 16, color: AppTheme.black, fontWeight: FontWeight.w500);
  static const headline20 = TextStyle(
      fontSize: 20, color: AppTheme.black, fontWeight: FontWeight.bold);
  static const smallGrey211 = TextStyle(
      fontSize: 11, color: AppTheme.grey2, fontWeight: FontWeight.normal);
  static const smallGrey111 = TextStyle(
      fontSize: 11, color: AppTheme.grey1, fontWeight: FontWeight.normal);

  // borders
  static final borderline = Border.all(width: 1, color: AppTheme.borderColor);
  static final borderNone = Border(); // no border
  static final borderRadius12 = BorderRadius.circular(12);
  static final borderRadius14 = BorderRadius.circular(14);
  static final borderRadius16 = BorderRadius.circular(16);
  static final borderRadius18 = BorderRadius.circular(18);
  static final borderRadius11 = BorderRadius.circular(11);
  static final borderRadius10 = BorderRadius.circular(10);
  static final borderRadius8 = BorderRadius.circular(8);

  // decoration
  static final boxDecorationIcon = BoxDecoration(
      color: AppTheme.grey3,
      borderRadius: BorderRadius.horizontal(
          left: Radius.circular(36), right: Radius.circular(36)));
}
