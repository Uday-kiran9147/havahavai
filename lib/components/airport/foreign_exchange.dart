// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:havahavai/widgets/divider.dart';
import 'package:havahavai/widgets/widgets.dart';


class ForeignExchangeSection extends StatelessWidget {
  const ForeignExchangeSection({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: size.width,
        height: size.height * 0.33,
        child: Container(
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ComponentHeaderText(
                  text: 'Foreign exchange',
                ),
                const Gap(3),
                ExchangeDetails(
                  title: 'Travelex',
                  description:
                      'Terminal 3-\nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
                ),
                DividerCustom(),
                ExchangeDetails(
                  title: 'AI Ansari Exchange',
                  description:
                      'Terminal 3-\nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
                ),
                DividerCustom(),
                ExchangeDetails(
                  title: 'Emirates NBD',
                  description:
                      'Terminal 3-\nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
                ),
              ],
            ),
          ),
        ));
  }
}
