import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:havahavai/utils/custom_svg.dart';
import 'package:havahavai/widgets/contact_row.dart';

import '../../theme/theme.dart';

class ButtonsSection extends StatelessWidget {
   ButtonsSection({
    super.key,
    this.color,
  });
  Color? color = AppTheme.black;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RowCustom(
            leading: Container(
              decoration: BoxDecoration(
                color: color?? AppTheme.black,
                borderRadius: UI.borderRadius12,
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 14),
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CustomSvg(
                      url: 'assets/icons/0.svg',
                      color: AppTheme.white,
                    ),
                    const Gap(5),
                    Text('Get direction', style: UI.bodyWhite16),
                  ],
                ),
              ),
            ),
            trailing: Container()),
        Gap(5),
        RowCustom(
            leading: Container(
              decoration: BoxDecoration(
                color: AppTheme.black,
                borderRadius: UI.borderRadius12,
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 14),
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CustomSvg(
                      url: 'assets/icons/8.svg',
                      color: AppTheme.white,
                    ),
                    const Gap(5),
                    Text('Call airport', style: UI.bodyWhite16),
                  ],
                ),
              ),
            ),
            trailing: Container()),
      ],
    );
  }
}
