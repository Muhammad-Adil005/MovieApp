import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/utils/text.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

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
                        modified_text(
                          text: 'The King’s Man',
                          color: Color(0xff202C43),
                          fontsize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        modified_text(
                          text: 'March 5, 2021  I  12:30 hall 1',
                          color: Color(0xff61C3F2),
                          fontsize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage('assets/images/doted.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 15.sp,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            CupertinoIcons.minus,
                            size: 15.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Divider(
                    thickness: 2,
                    color: Color(0xff202C43).withOpacity(0.3),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 252.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 50.w),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/Selected.png'),
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  SizedBox(width: 10.w),
                                  modified_text(
                                    text: 'Selected',
                                    fontsize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/NotAvailable.png'),
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  SizedBox(width: 10.w),
                                  modified_text(
                                    text: 'Not available',
                                    color: Color(0xff8F8F8F),
                                    fontWeight: FontWeight.w500,
                                    fontsize: 12.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/Vip.png'),
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  SizedBox(width: 10.w),
                                  modified_text(
                                    text: 'VIP (150\$)',
                                    fontWeight: FontWeight.w600,
                                    fontsize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/Regular.png'),
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  SizedBox(width: 5.w),
                                  modified_text(
                                    text: 'Regular (50 \$)',
                                    fontWeight: FontWeight.w500,
                                    fontsize: 12.sp,
                                    color: Color(0xff8F8F8F),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      width: 97.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          modified_text(
                            text: '4 / 3 row',
                            fontWeight: FontWeight.w500,
                            fontsize: 14.sp,
                            color: Color(0xff202C43),
                          ),
                          Icon(CupertinoIcons.clear, size: 15.sp),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 108.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade100,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Column(
                              children: [
                                modified_text(
                                  text: 'Total Price',
                                  color: Color(0xff202C43),
                                  fontWeight: FontWeight.w400,
                                  fontsize: 10.sp,
                                ),
                                modified_text(
                                  text: '\$ 50',
                                  color: Color(0xff202C43),
                                  fontWeight: FontWeight.w600,
                                  fontsize: 16.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        SizedBox(
                          width: 200.w,
                          height: 50.h,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff61C3F2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              onPressed: () {},
                              child: Text('Proceed to pay')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
