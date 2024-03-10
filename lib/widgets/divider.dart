import 'package:flutter/material.dart';

class DividerCustom extends StatelessWidget {
  const DividerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade200,
      endIndent: 10,
      indent: 10,
      height: 10,
    );
  }
}
