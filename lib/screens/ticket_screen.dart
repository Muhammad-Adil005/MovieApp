import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/screens/select_seat_screen.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage('assets/images/MaskGroup.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned.fill(
                    top: 100.h,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 20.sp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'watch',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 100.h),
                          child: Center(
                            child: Text(
                              'In theaters december 22, 2021',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectSeatPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 243.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff61C3F2),
                            ),
                            child: Center(
                              child: Text(
                                'Get Tickets',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.w),
                        Container(
                          width: 243.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Color(0xff61C3F2),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.play_arrow_solid,
                                color: Colors.white,
                                size: 15.sp,
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                'Watch Trailer',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Genres',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: Color(0xff202C43),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff15D2BC),
                        ),
                        child: Center(
                          child: Text(
                            'Action',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffE26CA5),
                        ),
                        child: Center(
                          child: Text(
                            'Thriller',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff564CA3),
                        ),
                        child: Center(
                          child: Text(
                            'Science',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffCD9D0F),
                        ),
                        child: Center(
                          child: Text(
                            'Fiction',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Text(
                    'Overview',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xff202C43),
                    ),
                  ),
                  Container(
                    width: 295.w,
                    height: 133.h,
                    child: Text(
                      'As a collection of historys worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them. Discover the origins of the very first independent intelligence agency in The Kings Man. The Comic Book “The Secret Service” by Mark Millar and Dave Gibbons.simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets ',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8F8F8F),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
