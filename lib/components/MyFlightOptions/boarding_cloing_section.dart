import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:havahavai/theme/theme.dart';
import 'package:havahavai/widgets/contact_row.dart';
import '../../widgets/widgets.dart';
class BoardingClosingSection extends StatelessWidget {
  const BoardingClosingSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(borderWidth: UI.borderNone,
      width: size.width,
      color: AppTheme.black,
      height: size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RowCustom(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Boarding closes in 00:30', style: UI.bodyWhite14),
              Text(
                'On time',
                style: TextStyle(
                  color: AppTheme.grey1,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          trailing: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppTheme.yellow, borderRadius: UI.borderRadius12),
            child: Text(
              '🚪 12:00',
              style: TextStyle(
                color: AppTheme.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
