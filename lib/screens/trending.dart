import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/text.dart';
import 'movie_details_screen.dart';

class TrendingMovies extends StatelessWidget {
  final List? trending;

  TrendingMovies({this.trending});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modified_text(
            text: 'Trending Movies',
            fontsize: 22.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          SizedBox(height: 10.h),
          Container(
              height: 270.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending?.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MovieDetailScreen(
                                      name: trending![index]['title'],
                                      bannerurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending![index]['backdrop_path'],
                                      posterurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              trending![index]['poster_path'],
                                      description: trending![index]['overview'],
                                      vote: trending![index]['vote_average']
                                          .toString(),
                                      launch_on: trending![index]
                                          ['release_date'],
                                    )));
                      },
                      child: Container(
                        width: 140.w,
                        child: Column(
                          children: [
                            Container(
                              height: 190.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/w500' +
                                          trending![index]['poster_path']),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              child: modified_text(
                                  fontsize: 15.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  text: trending![index]['title'] != null
                                      ? trending![index]['title']
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
