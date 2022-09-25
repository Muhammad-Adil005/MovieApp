import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/utils/text.dart';

class MovieDetailScreen extends StatelessWidget {
  final String? name, description, bannerurl, posterurl, vote, launch_on;

  MovieDetailScreen(
      {this.name,
      this.description,
      this.bannerurl,
      this.posterurl,
      this.vote,
      this.launch_on});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: [
            Container(
                height: 250.h,
                child: Stack(children: [
                  Positioned(
                    child: Container(
                      height: 250.h,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        bannerurl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      child: modified_text(
                        text: '⭐ Average Rating - ' + vote!,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontsize: 18.sp,
                      )),
                ])),
            SizedBox(height: 15.h),
            Container(
                padding: EdgeInsets.all(10),
                child: modified_text(
                  text: name != null ? name : 'Not Loaded',
                  fontsize: 24.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
            Container(
                padding: EdgeInsets.only(left: 10),
                child: modified_text(
                  text: 'Releasing On - ' + launch_on!,
                  fontsize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: 200.h,
                  width: 100.w,
                  child: Image.network(posterurl!),
                ),
                Flexible(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: modified_text(
                        text: description,
                        fontsize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: () {},
                child: Text('Watch Trailer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy Code for practice purpose

/*
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 111.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Color(0xffEFEFEF),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Watch',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: Color(0xff202C43),
                    ),
                  ),
                  Icon(CupertinoIcons.search),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              width: 335.w,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/Freeguy.png'),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            Container(
              width: 335.w,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/TheKingMan.png'),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            Container(
              width: 335.w,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/JojoRabbit.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */
