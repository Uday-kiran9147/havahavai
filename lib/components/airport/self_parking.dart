// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:havahavai/widgets/widgets.dart';

class SelfParkingSection extends StatelessWidget {
  final Size size;
  const SelfParkingSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: size.width,
        height: size.height * 0.3,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ComponentHeaderText(text: "Self Parking"),
              Terminals(),
              SelfParkingVehicleDetails(
                iconUrl: "assets/icons/19.svg",
                transport: 'Two wheeler',
                price: 'AED 50 / day',
              ),
              SelfParkingVehicleDetails(
                iconUrl: "assets/icons/12.svg",
                transport: 'Car Parking',
                price: 'AED 100 / day',
              ),
              SelfParkingVehicleDetails(
                iconUrl: "assets/icons/18.svg",
                transport: 'Electric Car Parking',
                price: 'AED 100 / day',
              ),
            ],
          ),
        ));
  }
}
