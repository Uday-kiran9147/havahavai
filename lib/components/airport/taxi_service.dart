import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../utils/constants.dart';
import '../../widgets/widgets.dart';

class TaxiService extends StatelessWidget {
  const TaxiService({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        width: size.width,
        height: size.height * 0.28,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentHeaderText(text: "Taxi service"),
              GridView.builder(
                  padding: const EdgeInsets.only(top: 8),
                  shrinkWrap: true,
                  itemCount: taxi.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      /* child aspect ratio is basically width/height of the grid. So let's say you want the width of each grid to be 30 and the height to be 20, you would set the aspect ratio to be 3/2.  */
                      childAspectRatio: 90 / 75,
                      mainAxisExtent: 70,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 6,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    final currentTaxiIcon = "assets/images/${taxi[index]}.png";
                    return Container(
                      // width: size.width * 0.45,
                      // height: size.height * 0.18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            currentTaxiIcon,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            "\$\$\$\$\$",
                            style: UI.smallGrey211,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: UI.borderline,
                          borderRadius: UI.borderRadius12),
                    );
                  })
            ],
          ),
        ));
  }
}
