import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/ui/pages/bonus_page.dart';
import 'package:bwa_airplane/ui/pages/checkout_page.dart';
import 'package:bwa_airplane/ui/pages/choose_seat_page.dart';
import 'package:bwa_airplane/ui/pages/detail_page.dart';
import 'package:bwa_airplane/ui/pages/get_started_page.dart';
import 'package:bwa_airplane/ui/pages/main_page.dart';
import 'package:bwa_airplane/ui/pages/sign_in_page.dart';
import 'package:bwa_airplane/ui/pages/sign_up_page.dart';
import 'package:bwa_airplane/ui/pages/success_checkout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/detail': (context) => DetailPage(),
          '/choose-seat': (context) => ChooseSeatPage(),
          '/checkout': (context) => CheckoutPage(),
          '/success-checkout': (context) => SuccessCheckoutPage(),
        },
      ),
    );
  }
}
