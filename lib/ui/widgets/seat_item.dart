import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final int status;

  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assets() {
      switch (status) {
        case 0:
          return 'assets/icon_unavailable.png';
        case 1:
          return 'assets/icon_available.png';
        case 2:
          return 'assets/icon_selected.png';
        default:
          return 'assets/icon_unavailable.png';
      }
    }

    child() {
      if (status == 2) {
        return Center(
          child:
              Text('YOU', style: whiteTextStyle.copyWith(fontWeight: semiBold)),
        );
      } else
        SizedBox();
    }

    return Container(
        width: 48,
        height: 48,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(assets()))),
        child: child());
  }
}
