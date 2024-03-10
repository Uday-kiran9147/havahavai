import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../utils/constants.dart';
import '../../widgets/widgets.dart';

class CategorySection extends StatefulWidget {
  CategorySection({
    super.key,
    required this.size,
    this.selectedCategory,
  });

  final Size size;
  String? selectedCategory = categories[0];

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: widget.size.width,
      height: widget.size.height * 0.08,
      borderWidth: UI.borderNone,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryButton(
              selectedCategory: widget.selectedCategory!,
              index: index,
              ontap: () {
                setState(() {
                  widget.selectedCategory = categories[index];
                  print(widget.selectedCategory);
                });
              });
        },
      ),
    );
  }
}
