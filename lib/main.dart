import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:digi_cart/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digi Cart',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splashIconSize: 200,
          duration: 5000,
          splash: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/app_logo.png"),
                const Text(" Digi Cart",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "title"
                ),),
              ],

          ),
          nextScreen:const HomeScreen()),
    );
  }
}

