import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:havahavai/theme/theme.dart';


class SelfParkingVehicleDetails extends StatelessWidget {
  const SelfParkingVehicleDetails({
    Key? key,
    required this.transport,
    required this.iconUrl,
    required this.price,
  }) : super(key: key);
  final String transport;
  final String iconUrl;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              iconUrl,
              color: Colors.black,
            ),
            const Gap(15),
            Text(transport, style: UI.bodyGrey14),
          ],
        ),
        const Gap(18),
        Row(
          children: [
            Text(price, style: UI.bodyBlack14),
            const Gap(15),
            Icon(
              Icons.info_outline,
              size: 15,
              color: AppTheme.grey1,
            )
          ],
        ),
      ],
    );
  }
}
