import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  CustomBottomNavItem({
    required this.index,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(imageUrl,
              width: 24,
              height: 24,
              color: context.read<PageCubit>().state == index
                  ? primaryColor
                  : kGreyColor),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index
                    ? primaryColor
                    : kTransparentColor,
                borderRadius: BorderRadius.circular(defaultRadius)),
          )
        ],
      ),
    );
  }
}
