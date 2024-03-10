// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:havahavai/pages/my_flight_options.dart';
import 'package:havahavai/theme/theme.dart';
import 'package:havahavai/utils/constants.dart';
import 'package:havahavai/widgets/divider.dart';

import '../components/airport/categoty_section.dart';
import '../components/components.dart';
import '../components/airport/public_transport.dart';
import '../utils/custom_svg.dart';
import '../widgets/widgets.dart';

class AirPortPage extends StatefulWidget {
  const AirPortPage({super.key, required this.title});

  final String title;

  @override
  State<AirPortPage> createState() => _AirPortPageState();
}

class _AirPortPageState extends State<AirPortPage> {
  String selectedCategory = categories[0];
  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.toString());
    debugPrint(MediaQuery.sizeOf(context).width.toString());

    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          const Gap(20),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => MyFlightOptionsPage(),
                    ));
              },
              child: AirPortDetails(size: size)),
          const Gap(20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => MyFlightOptionsPage(),
                  ));
            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                GetDetails(size: size),
                Positioned(
                  bottom: 15,
                  child: CustomContainer(
                      width: size.width * 0.9,
                      height: size.height * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    CustomSvg(
                                      url: 'assets/icons/2.svg',
                                      color: Colors.black,
                                    ),
                                    Text('19 C', style: UI.body16),
                                    Text(
                                      'Cloudy',
                                      style: UI.smallGrey111,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CustomSvg(
                                      url: 'assets/icons/9.svg',
                                      color: Colors.black,
                                    ),
                                    Text('Jan 30', style: UI.body16),
                                    Text(
                                      'Cloudy',
                                      style: UI.smallGrey111,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CustomSvg(
                                      url: 'assets/icons/25.svg',
                                      color: Colors.black,
                                    ),
                                    Text('8:45 PM', style: UI.body16),
                                    Text(
                                      'GMT',
                                      style: UI.smallGrey111,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CustomSvg(
                                      url: 'assets/icons/26.svg',
                                      color: Colors.black,
                                    ),
                                    Text('ADE', style: UI.body16),
                                    Text(
                                      '1\$ = 3.67AED',
                                      style: UI.smallGrey111,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            DividerCustom(),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: UI.borderRadius12,
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      CustomSvg(
                                        url: 'assets/icons/0.svg',
                                        color: Colors.blue,
                                      ),
                                      const Gap(5),
                                      Text('Get direction',
                                          style: UI.bodyBlack16),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: UI.borderRadius12,
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      CustomSvg(
                                        url: 'assets/icons/8.svg',
                                        color: Colors.blue,
                                      ),
                                      const Gap(5),
                                      Text('Call support',
                                          style: UI.bodyBlack16),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
          const Gap(15),
          CategorySection(size: size, selectedCategory: selectedCategory),
          const Gap(15),
          TaxiService(size: size),
          const Gap(15),
          PublicTransport(size: size),
          const Gap(15),
          SelfParkingSection(
            size: size,
          ),
          const Gap(15),
          TerminalMapSection(size: size),
          const Gap(15),
          ForeignExchangeSection(size: size),
          const Gap(15),
          ContactAirPortSection(size: size),
          const Gap(15),
          ButtonsSection(),
        ],
      ),
    );
  }
}
