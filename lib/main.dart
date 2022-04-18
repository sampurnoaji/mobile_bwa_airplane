import 'package:bwa_airplane/ui/pages/bonus_page.dart';
import 'package:bwa_airplane/ui/pages/checkout_page.dart';
import 'package:bwa_airplane/ui/pages/choose_seat_page.dart';
import 'package:bwa_airplane/ui/pages/detail_page.dart';
import 'package:bwa_airplane/ui/pages/get_started_page.dart';
import 'package:bwa_airplane/ui/pages/main_page.dart';
import 'package:bwa_airplane/ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
        '/detail': (context) => DetailPage(),
        '/choose-seat': (context) => ChooseSeatPage(),
        '/checkout': (context) => CheckoutPage(),
      },
    );
  }
}
