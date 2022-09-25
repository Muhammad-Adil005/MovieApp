import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/screens/payment_screen.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 123.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 40.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'The King’s Man',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xff202C43),
                          ),
                        ),
                        Text(
                          'In Theaters December 22, 2021',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Color(0xff61C3F2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      'Date',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xff202C43),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 35.h,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyContainer(
                          color: Color(0xff61C3F2),
                          text: '5 Mar',
                          textcolor: Colors.white,
                        ),
                        MyContainer(
                          color: Colors.grey.withOpacity(0.1),
                          text: '6 Mar',
                          textcolor: Color(0xff202C43),
                        ),
                        MyContainer(
                          color: Colors.grey.withOpacity(0.1),
                          text: '7 Mar',
                          textcolor: Color(0xff202C43),
                        ),
                        MyContainer(
                          color: Colors.grey.withOpacity(0.1),
                          text: '8 Mar',
                          textcolor: Color(0xff202C43),
                        ),
                        MyContainer(
                          color: Colors.grey.withOpacity(0.1),
                          text: '9 Mar',
                          textcolor: Color(0xff202C43),
                        ),
                        MyContainer(
                          color: Colors.grey.withOpacity(0.1),
                          text: '10 Mar',
                          textcolor: Color(0xff202C43),
                        ),
                        MyContainer(
                          color: Colors.grey.withOpacity(0.1),
                          text: '11 Mar',
                          textcolor: Color(0xff202C43),
                        ),
                        MyContainer(
                          color: Colors.grey.withOpacity(0.1),
                          text: '12 Mar',
                          textcolor: Color(0xff202C43),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 250.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '12:30',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'Cinetech + hall 1',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              width: 250.w,
                              height: 160.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xff61C3F2),
                                ),
                                image: DecorationImage(
                                  //fit: BoxFit.fill,
                                  image: AssetImage('assets/images/doted.png'),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '50\$',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  'or',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '2500 bonus',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '12:30',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'Cinetech + hall 1',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              width: 250.w,
                              height: 160.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xff61C3F2),
                                ),
                                image: DecorationImage(
                                  //fit: BoxFit.fill,
                                  image: AssetImage('assets/images/doted.png'),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '50\$',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  'or',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '2500 bonus',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '12:30',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'Cinetech + hall 1',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              width: 250.w,
                              height: 160.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xff61C3F2),
                                ),
                                image: DecorationImage(
                                  //fit: BoxFit.fill,
                                  image: AssetImage('assets/images/doted.png'),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '50\$',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  'or',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '2500 bonus',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xff202C43),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, bottom: 15.h),
              child: SizedBox(
                width: 323.w,
                height: 50.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff61C3F2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentPage(),
                        ),
                      );
                    },
                    child: Text('Select Seats')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? textcolor;
  MyContainer({this.text, this.textcolor, this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: Container(
        width: 67.w,
        // height: 32.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
