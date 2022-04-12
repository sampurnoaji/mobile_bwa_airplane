import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationTile({
    Key? key,
    required this.name,
    required this.city,
    required this.imageUrl,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageUrl))),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  name,
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
                ),
                SizedBox(height: 5),
                Text(
                  city,
                  style: blackTextStyle.copyWith(fontWeight: light),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(right: 2),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'))),
              ),
              Text(
                rating.toString(),
                style: blackTextStyle.copyWith(fontWeight: medium),
              )
            ],
          ),
        ],
      ),
    );
  }
}