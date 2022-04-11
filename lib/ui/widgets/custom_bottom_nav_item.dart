import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavItem extends StatelessWidget {

  final String imageUrl;
  final bool isSelected;

  CustomBottomNavItem({required this.imageUrl, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl)),
            )),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? primaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
        )
      ],
    );
  }
}
