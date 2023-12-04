
import 'package:airplane/ui/pages/bonus_page.dart';
import 'package:airplane/ui/pages/get_started.dart';
import 'package:airplane/ui/pages/main_page.dart';
import 'package:airplane/ui/pages/sign_up.dart';
import 'package:airplane/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());
  
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        '/': (context) =>  SplashPage(),
        '/get-started': (context) =>  const GetStartedPage(),
        '/sign-up' : (context) => SignUp(),
        '/bonus': (context) => BonusPage(),
        '/main-page': (context) => MainPage(),
      },
    );
  }
}