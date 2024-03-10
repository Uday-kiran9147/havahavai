
import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../utils/constants.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    required this.selectedCategory,
    required this.index,
    required this.ontap,
  });

  final String selectedCategory;
  final int index;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        margin: EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: selectedCategory == categories[index]
                ? Colors.black
                : AppTheme.grey3,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(36), right: Radius.circular(36))),
        child: Center(
          child: Text(
            categories[index],
            style: TextStyle(
              color: selectedCategory == categories[index]
                  ? AppTheme.white
                  : AppTheme.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
