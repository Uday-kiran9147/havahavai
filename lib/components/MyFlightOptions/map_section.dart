import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../pages/my_flight_options.dart';
import '../../theme/theme.dart';
import '../../widgets/contact_row.dart';
import '../../widgets/widgets.dart';

class MapsSection extends StatelessWidget {
  const MapsSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.25,
      child: CustomContainer(
          borderWidth: UI.borderNone,
          width: size.width,
          height: size.height * 0.2,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.network(
                  fit: BoxFit.cover,
                  'https://media.wired.com/photos/59269cd37034dc5f91bec0f1/191:100/w_1280,c_limit/GoogleMapTA.jpg'),
              Positioned(
                top: 15,
                child: CustomContainer(
                  width: size.width * 0.90,
                  height: size.height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RowCustom(
                        axisAlignment: MainAxisAlignment.spaceBetween,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/474x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg'),
                        ),
                        middle: TextCustomRich(flights: 04, title: "Flights"),
                        trailing: RowCustom(
                          leading:
                              TextCustomRich(flights: 06, title: "Countries"),
                          middle: Gap(50),
                          trailing:
                              TextCustomRich(flights: 23323, title: "Distance"),
                        )),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
