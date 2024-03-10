
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app/app.dart';

void main() {
  try {
    runApp(const MyApp());
  } catch (e) {
    debugPrint(e.toString());
  }
}
