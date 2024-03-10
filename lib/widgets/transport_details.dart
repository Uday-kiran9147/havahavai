import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../theme/theme.dart';


class TransportDetails extends StatelessWidget {
  const TransportDetails({
    Key? key,
    required this.icon,
    required this.transport,
    required this.time,
    required this.nexticon,
  }) : super(key: key);
  final String icon;
  final String transport;
  final String time;
  final String nexticon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              icon,
              color: Colors.black,
            ),
            const Gap(15),
            Text(transport, style: UI.body16),
          ],
        ),
        const Gap(18),
        Row(
          children: [
            Text(time, style: UI.smallGrey211),
            const Gap(15),
            SvgPicture.asset(
              nexticon,
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
