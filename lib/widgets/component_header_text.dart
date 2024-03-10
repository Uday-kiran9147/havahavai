import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ComponentHeaderText extends StatelessWidget {
  final String text;
  const ComponentHeaderText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: UI.headline20,
    );
  }
}
