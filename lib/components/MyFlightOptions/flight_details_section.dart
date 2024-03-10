import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:havahavai/theme/theme.dart';
import 'package:havahavai/widgets/contact_row.dart';

import '../../widgets/widgets.dart';

class FlightDetailsSection extends StatelessWidget {
  const FlightDetailsSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: size.width,
        height: size.height * 0.18,
        borderWidth: UI.borderNone,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppTheme.grey3,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          width: size.width,
          height: size.height * 0.20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RowCustom(
                    axisAlignment: MainAxisAlignment.spaceAround,
                    leading: Text(
                      'Mon, 24 Dec 24',
                      style: UI.bodyBlack14,
                    ),
                    middle: Spacer(),
                    trailing: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/28.svg',
                          // width: 20,
                          // height: 20,
                        ),
                        Text('6E 725', style: UI.bodyGrey12),
                      ],
                    )),
              ),
              Container(
                width: double.infinity,
                height: 1,
                child: CustomPaint(
                  painter: DottedLinePainter(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RowCustom(
                    leading: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'DEL ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppTheme.black,
                              fontSize: 20,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '08:15',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            CountryFlag.fromCountryCode(
                              'AE',
                              width: 10,
                              height: 10,
                            ),
                            Text(
                              'New Delhi ',
                              style: UI.bodyGrey12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    middle: Text(
                      '-2h-',
                      style: UI.smallGrey111,
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          '10:15 BOM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.black,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            CountryFlag.fromCountryCode(
                              'IN',
                              width: 10,
                              height: 10,
                            ),
                            Text('Mumbai', style: UI.bodyGrey12),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppTheme.grey2 // Set the color of the dots
      ..strokeCap = StrokeCap.round // Set the round cap for a circular dot
      ..strokeWidth = 1.0; // Set the width of the dots

    double space = 5.0; // Set the space between the dots
    double dashWidth = 5.0; // Set the width of each dot

    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, size.height / 2),
          Offset(startX + dashWidth, size.height / 2), paint);
      startX += dashWidth + space;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
