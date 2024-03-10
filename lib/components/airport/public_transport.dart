
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../widgets/widgets.dart';

class PublicTransport extends StatelessWidget {
  const PublicTransport({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: size.width,
        height: size.height * 0.2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ComponentHeaderText(text: "Public transport"),
              const Gap(15),
              TransportDetails(
                icon: "assets/icons/16.svg",
                transport: "Metro",
                time: "6am-10pm",
                nexticon: "assets/icons/13.svg",
              ),
              Divider(
                color: Colors.grey.shade200,
                endIndent: 25,
                indent: 25,
                height: 15,
              ),
              TransportDetails(
                icon: "assets/icons/16.svg",
                transport: "Bus",
                time: "available 24 hrs",
                nexticon: "assets/icons/13.svg",
              )
            ],
          ),
        ));
  }
}
