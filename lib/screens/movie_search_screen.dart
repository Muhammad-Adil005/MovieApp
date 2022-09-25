import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieSearchPage extends StatefulWidget {
  const MovieSearchPage({Key? key}) : super(key: key);

  @override
  State<MovieSearchPage> createState() => _MovieSearchPageState();
}

class _MovieSearchPageState extends State<MovieSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'TV shows, movies and more',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: Icon(CupertinoIcons.search),
                      suffixIcon: Icon(CupertinoIcons.xmark),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                TextField(
                  decoration: InputDecoration(hintText: 'Top Results'),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 130.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Timless.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Timless',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xff202C43),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              'Fantasy',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Color(0xffDBDBDF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      CupertinoIcons.ellipsis,
                      color: Color(0xff61C3F2),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 130.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/InTime.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'In Time',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xff202C43),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              'Sci-Fi',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Color(0xffDBDBDF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      CupertinoIcons.ellipsis,
                      color: Color(0xff61C3F2),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 130.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/images/ATimeToKill.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'A Time To Kill',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xff202C43),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              'Crime',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Color(0xffDBDBDF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      CupertinoIcons.ellipsis,
                      color: Color(0xff61C3F2),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
