import 'package:flutter/material.dart';

import '../theme/theme.dart';
class ExchangeDetails extends StatefulWidget {
  const ExchangeDetails({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String title;
  final String description;

  @override
  State<ExchangeDetails> createState() => _ExchangeDetailsState();
}

class _ExchangeDetailsState extends State<ExchangeDetails> {
  bool showDetails = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showDetails = !showDetails;
        });
      },
      child: ListTile(
          title: Text(
            widget.title,
            style: UI.bodyBlack14,
          ),
          subtitle: showDetails
              ? Text(widget.description, maxLines: 3, style: UI.bodyGrey12)
              : null,
          trailing: Icon(
              (showDetails
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down))),
    );
  }
}
