import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button.dart';
import 'package:bwa_airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            // NOTE: AVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'))),
            ),
            Text('Available', style: blackTextStyle),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'))),
            ),
            Text('Selected', style: blackTextStyle),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            Text('Unavailable', style: blackTextStyle),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kWhiteColor),
        child: Column(
          children: [
            // NOTE: SEAT ALPHABET
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

            // NOTE: SEAT 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 0),
                  SeatItem(status: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text('1',
                          style: greyTextStyle.copyWith(fontSize: 16)),
                    ),
                  ),
                  SeatItem(status: 2),
                  SeatItem(status: 1),
                ],
              ),
            ),

            // NOTE: SEAT 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text('2',
                          style: greyTextStyle.copyWith(fontSize: 16)),
                    ),
                  ),
                  SeatItem(status: 1),
                  SeatItem(status: 2),
                ],
              ),
            ),

            // NOTE: SEAT 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text('3',
                          style: greyTextStyle.copyWith(fontSize: 16)),
                    ),
                  ),
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                ],
              ),
            ),

            // NOTE: SEAT 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text('4',
                          style: greyTextStyle.copyWith(fontSize: 16)),
                    ),
                  ),
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                ],
              ),
            ),

            // NOTE: SEAT 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text('5',
                          style: greyTextStyle.copyWith(fontSize: 16)),
                    ),
                  ),
                  SeatItem(status: 1),
                  SeatItem(status: 1),
                ],
              ),
            ),

            // NOTE: YOUR SEAT
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'C1, D2',
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: primaryTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: CustomButton(title: 'Continue to Checkout', onPressed: () {
            Navigator.pushNamed(context, '/checkout');
          }));
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          children: [title(), seatStatus(), selectSeat(), checkoutButton()],
        ),
      ),
    );
  }
}
