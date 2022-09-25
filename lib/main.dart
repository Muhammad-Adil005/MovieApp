import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/screens/SplashScreen.dart';
import 'package:movieapp/screens/movie_details_screen.dart';
import 'package:movieapp/screens/movie_list_screen.dart';
import 'package:movieapp/screens/movie_search_screen.dart';
import 'package:movieapp/screens/payment_screen.dart';
import 'package:movieapp/screens/result_found_screen.dart';
import 'package:movieapp/screens/select_seat_screen.dart';
import 'package:movieapp/screens/ticket_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(370, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'poppins',
            brightness: Brightness.dark,
            // primaryColor: Colors.green,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Movie App',
          home: SplashScreen(),
        );
      },
    );
  }
}
