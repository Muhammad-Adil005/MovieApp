import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movieapp/screens/movie_details_screen.dart';

import '../bottomNavigationBar/UserBottomNavigationBar.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    _navigatetoOnBoardingScreen();
  }

  void _navigatetoOnBoardingScreen() async {
    Timer(
        Duration(seconds: 3),
        (() => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => UserbottomNavigationBar()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/Splashimage.png'),
        ),
      ),
    );
  }
}
