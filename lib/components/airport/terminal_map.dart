// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../theme/theme.dart';
import '../../widgets/widgets.dart';

class TerminalMapSection extends StatelessWidget {
  final Size size;
  const TerminalMapSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: size.width,
        height: size.height * 0.25,
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ComponentHeaderText(text: "Terminal Map"),
                Row(
                  children: [
                    Terminals(),
                    Gap(20),
                    Terminals(),
                  ],
                ),
                Gap(5),
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomContainer(
                        width: size.width * 0.8,
                        height: size.height * 0.1,
                        child: ClipRRect(
                          borderRadius: UI.borderRadius10,
                          child: Image.asset(
                            'assets/images/view.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        // margin: EdgeInsets.all(20),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(36),
                                right: Radius.circular(36))),
                        child: Center(
                          child: Text(
                            "View",
                            style: UI.body12,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ));
  }
}
