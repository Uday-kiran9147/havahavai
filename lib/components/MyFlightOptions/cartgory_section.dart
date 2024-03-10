// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:havahavai/theme/theme.dart';

import '../../widgets/widgets.dart';

class CategorizedOptions extends StatelessWidget {
  CategorizedOptions({
    Key? key,
    required this.size,
    this.t1,
    this.t2,
  }) : super(key: key);

  final Size size;
  String? t1;
  String? t2;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: size.width,
        height: size.height * 0.08,
        borderWidth: UI.borderNone,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.all(12),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: UI.borderNone,
                borderRadius: UI.borderRadius10,
                color: AppTheme.grey3,
              ),
              child: Center(
                child: Text(
                  t1 ?? 'Boarding pass',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: UI.borderNone,
                borderRadius: UI.borderRadius10,
                color: AppTheme.grey3,
              ),
              child: Center(
                child: Text(
                  t2 ?? 'Share ticket',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: UI.borderNone,
                borderRadius: UI.borderRadius10,
                color: AppTheme.grey3,
              ),
              child: Center(child: Icon(Icons.more_horiz_outlined)),
            ),
          ],
        ));
  }
}
