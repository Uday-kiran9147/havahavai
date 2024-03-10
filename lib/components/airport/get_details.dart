import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../widgets/widgets.dart';

class GetDetails extends StatelessWidget {
  const GetDetails({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: size.width,
      height: size.height * 0.45, // 45% of the screen
      child: ClipRRect(
        borderRadius: UI.borderRadius10,
        child: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/c/cc/Dubai_Skylines_at_night_%28Pexels_3787839%29.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
