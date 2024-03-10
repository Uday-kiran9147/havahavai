import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:havahavai/theme/theme.dart';


class Terminals extends StatelessWidget {
  const Terminals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("T1", style: UI.bodyWhite16),
            ),
            decoration: BoxDecoration(
                borderRadius: UI.borderRadius8, color: AppTheme.black),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("T2", style: UI.body16),
            ),
            decoration: BoxDecoration(
                borderRadius: UI.borderRadius8, color: AppTheme.grey3),
          ),
        ],
      ),
    );
  }
}
