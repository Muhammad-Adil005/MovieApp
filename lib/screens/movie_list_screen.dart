import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp/screens/toprated.dart';
import 'package:movieapp/screens/trending.dart';
import 'package:movieapp/screens/tv.dart';
import 'package:movieapp/utils/text.dart';
import 'package:tmdb_api/tmdb_api.dart';

class MovieListScreen extends StatefulWidget {
  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  final String apikey = 'db40b87f0433322ff0dbdbc846b903bf';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkYjQwYjg3ZjA0MzMzMjJmZjBkYmRiYzg0NmI5MDNiZiIsInN1YiI6IjYzMmZlY2JkYWJkYWZjMDA4MWFhMGJmNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ibQcrFg7KWQmg_Ge4a2Lv7w6fMPLHSpnFzWo9cb16gI';
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];

  @override
  void initState() {
    loadmovies();
    super.initState();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();
    print((trendingresult));
    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: modified_text(
      //       text: 'Flutter Movie App ❤️',
      //       color: Colors.blue,
      //       fontWeight: FontWeight.w500,
      //       fontsize: 25.sp),
      //   backgroundColor: Colors.transparent,
      // ),
      body: ListView(
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
          SizedBox(height: 10.h),
          TrendingMovies(trending: trendingmovies),
          TopRatedMovies(toprated: topratedmovies),
          TV(tv: tv),
        ],
      ),
    );
  }
}

/*


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({Key? key}) : super(key: key);

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                width: 334.w,
                height: 52.h,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F7),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffEFEFEF), width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search),
                    Text(
                      'TV shows, movies and more',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Icon(Icons.close),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: 600.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 163.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/comedy.png'),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 60.h,
                              left: 20.w,
                              child: Text(
                                'Comedies',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/crime.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Family.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/images/Documentaries.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Dramas.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Fantasy.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Holidays.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Horror.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/SciFi.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          width: 163.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Thriller.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
