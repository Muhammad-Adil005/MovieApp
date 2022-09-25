import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/text.dart';
import 'movie_details_screen.dart';

class TV extends StatelessWidget {
  final List tv;

  TV({required this.tv});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modified_text(
            text: 'Popular TV Shows Movies',
            fontsize: 22.sp,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 10.h),
          Container(
              // color: Colors.red,
              height: 210.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tv.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MovieDetailScreen(
                                      name: tv[index]['title'],
                                      bannerurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              tv[index]['backdrop_path'],
                                      posterurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              tv[index]['poster_path'],
                                      description: tv[index]['overview'],
                                      vote:
                                          tv[index]['vote_average'].toString(),
                                      launch_on: tv[index]['release_date'],
                                    )));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: 160.w,
                        child: Column(
                          children: [
                            Container(
                              width: 160.w,
                              height: 140.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            tv[index]['backdrop_path']),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              child: modified_text(
                                  fontsize: 15.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  text: tv[index]['original_name'] != null
                                      ? tv[index]['original_name']
                                      : 'Loading'),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
