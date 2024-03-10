import 'package:flutter/cupertino.dart';

class RowCustom extends StatelessWidget {
  RowCustom(
      {Key? key, required this.leading, this.middle, required this.trailing,this.axisAlignment})
      : super(key: key);
  Widget leading;
  Widget? middle;
  Widget trailing;
  MainAxisAlignment? axisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:axisAlignment?? MainAxisAlignment.spaceBetween,
      children: [
        leading,
        middle ?? Container(),
        trailing,
      ],
    );
  }
}
