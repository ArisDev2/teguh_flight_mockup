import 'package:flutter/material.dart';
import 'package:teguh_flight/ui/pages/bonus_page.dart';
import 'package:teguh_flight/ui/pages/get_started_page.dart';
import 'package:teguh_flight/ui/pages/main_page.dart';
import 'package:teguh_flight/ui/pages/sign_up_page.dart';
import 'package:teguh_flight/ui/pages/splash_page.dart';
import 'package:teguh_flight/ui/pages/success_page_checkout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => SplashPage(),
      '/get-started': (context) => GetStartedPage(),
      '/sign-up': (context) => SignUpPage(),
      '/bonus': (context) => BonusPage(),
      '/main': (context) => MainPage(),
      '/success-checkout': (context) => SuccessCheckoutPage(),
    });
  }
}
