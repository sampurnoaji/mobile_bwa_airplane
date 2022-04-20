import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/destination_card.dart';
import 'package:bwa_airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Howdy\n${state.user.name}',
                          style: blackTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Where to fly today?',
                          style: greyTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/image_profile.png'))),
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget destination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                  name: 'Lake Ciliwung',
                  city: 'Tangerang',
                  imageUrl: 'assets/image_dest_1.png',
                  rating: 3.4),
              DestinationCard(
                  name: 'White House',
                  city: 'Spain',
                  imageUrl: 'assets/image_dest_2.png',
                  rating: 3.4),
              DestinationCard(
                  name: 'Hill Haeyo',
                  city: 'Monaco',
                  imageUrl: 'assets/image_dest_3.png',
                  rating: 3.4),
              DestinationCard(
                  name: 'Menarra',
                  city: 'Japan',
                  imageUrl: 'assets/image_dest_4.png',
                  rating: 3.4),
              DestinationCard(
                  name: 'Payung Teduh',
                  city: 'Singapore',
                  imageUrl: 'assets/image_dest_5.png',
                  rating: 3.4)
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            DestinationTile(
                name: 'Danau Beratan',
                city: 'Singaraja',
                imageUrl: 'assets/image_dest_6.png',
                rating: 4.5),
            DestinationTile(
                name: 'Syney Opera',
                city: 'Australia',
                imageUrl: 'assets/image_dest_7.png',
                rating: 4.7),
            DestinationTile(
                name: 'Roma',
                city: 'Italy',
                imageUrl: 'assets/image_dest_8.png',
                rating: 4.1),
            DestinationTile(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/image_dest_5.png',
                rating: 4.0),
          ],
        ),
      );
    }

    return ListView(children: [
      header(),
      destination(),
      newDestination(),
    ]);
  }
}
