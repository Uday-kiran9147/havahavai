// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:havahavai/utils/constants.dart';
import 'package:havahavai/widgets/contact_row.dart';
import 'package:havahavai/widgets/divider.dart';
import 'package:havahavai/widgets/widgets.dart';
import '../../theme/theme.dart';

class ContactAirPortSection extends StatelessWidget {
  const ContactAirPortSection({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: size.width,
        height: size.height * 0.4,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentHeaderText(text: "Contact Airport"),
              ...contact.map(
                (e) => Column(
                  children: [
                    RowCustom(
                        leading: Text(e.toString(), style: UI.body16),
                        trailing: CustomButton(
                          child: Container(
                            margin: EdgeInsets.all(5),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              decoration: UI.boxDecorationIcon,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.call,
                                  color: AppTheme.black,
                                ),
                              )),
                        )),
                    e == contact.last
                        ? Container()
                        : DividerCustom(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  Color? color;
  CustomButton({this.color, this.child});

  Widget? child;

  BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: child ?? Container(),
    );
  }
}
