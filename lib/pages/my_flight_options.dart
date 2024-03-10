// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:havahavai/theme/theme.dart';
import 'package:havahavai/utils/custom_svg.dart';
import 'package:havahavai/widgets/contact_row.dart';
import 'package:havahavai/widgets/custom_container.dart';

import '../components/MyFlightOptions/myflightoptions.dart';

class MyFlightOptionsPage extends StatefulWidget {
  const MyFlightOptionsPage({super.key});

  @override
  State<MyFlightOptionsPage> createState() => _MyFlightOptionsPageState();
}

class _MyFlightOptionsPageState extends State<MyFlightOptionsPage> {
  bool showDetails = false;
  String display = "MyFlights";
  void showSheet() {}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: ListView(children: <Widget>[
      const Gap(20),
      MapsSection(size: size),
      ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(10),
        children: [
          CustomContainer(
              width: size.width,
              height: size.height * 0.12,
              borderWidth: UI.borderNone,
              child: RowCustom(
                axisAlignment: MainAxisAlignment.spaceAround,
                leading: Row(
                  children: [
                    Text(
                      display,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.black),
                    ),
                    PopupMenuButton(
                      initialValue: display,
                      icon: Icon(
                        (showDetails
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down),
                      ),
                      onSelected: (value) {
                        setState(() {
                          display = value.toString();
                        });
                      },
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: Row(
                              children: [
                                Icon(Icons.person_2_outlined),
                                Text("My Flights"),
                              ],
                            ),
                            value: "My Flights",
                          ),
                          PopupMenuItem(
                            child: Row(
                              children: [
                                Icon(Icons.group),
                                Text("friend's flights"),
                              ],
                            ),
                            value: "friend's flights",
                          ),
                        ];
                      },
                    ),
                  ],
                ),
                trailing: Row(
                  children: [
                    CustomSvg(url: 'assets/icons/10.svg'),
                    const Gap(20),
                    CustomSvg(url: 'assets/icons/21.svg'),
                  ],
                ),
              )),
          CategorizedOptions(size: size,t1:'all',t2:'sorted'),
          const Gap(20),
          FlightDetailsSection(size: size),
          const Gap(20),
          BoardingClosingSection(size: size),
          const Gap(20),
          CategorizedOptions(size: size),
          const Gap(20),
          ...List.generate(5, (index) {
            return Column(
              children: [
                FlightDetailsSection(size: size),
                Divider(color: Colors.grey.shade300,)
              ],
            );
          })
        ],
      ),
    ]));
  }
}

class TextCustomRich extends StatelessWidget {
  const TextCustomRich({
    Key? key,
    required this.title,
    required this.flights,
  }) : super(key: key);
  final String title;
  final int flights;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(fontSize: 12.0, color: Colors.black),
          ),
          TextSpan(text: '\n'), // Add a line break
          TextSpan(
            text: '$flights',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
