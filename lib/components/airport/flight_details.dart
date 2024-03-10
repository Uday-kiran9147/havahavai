import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../widgets/widgets.dart';
class AirPortDetails extends StatelessWidget {
  const AirPortDetails({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: size.width * 0.55,
      height: size.height * 0.06,borderWidth: UI.borderNone,
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ComponentHeaderText(
            text: "Dubai Airport - DXB",
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Dubai . ',
                style:
                    TextStyle(fontSize: 12, color: AppTheme.greydark),
              ),
              CountryFlag.fromCountryCode(
                'AE',
                width: 10,
                height: 10,
              ),
              Text(
                ' United Arab Emirates',
                style:
                    TextStyle(fontSize: 12, color: AppTheme.greydark),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

