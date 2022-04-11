import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_home.png')),
                      )),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_book.png')),
                      )),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                        color: kTransparentColor,
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_card.png')),
                      )),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                        color: kTransparentColor,
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_setting.png')),
                      )),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                        color: kTransparentColor,
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(children: [
        Text('main oage'),
        customBottomNavigation(),
      ]),
    );
  }
}
