import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/movie_details_screen.dart';
import '../screens/movie_list_screen.dart';
import '../screens/movie_search_screen.dart';
import '../screens/payment_screen.dart';
import '../screens/result_found_screen.dart';
import '../screens/select_seat_screen.dart';
import '../screens/ticket_screen.dart';

class UserbottomNavigationBar extends StatefulWidget {
  @override
  _UserbottomNavigationBarState createState() =>
      _UserbottomNavigationBarState();
}

class _UserbottomNavigationBarState extends State<UserbottomNavigationBar> {
  @override
  void initState() {
    super.initState();
  }

  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MovieListScreen(),
    MovieSearchPage(),
    ResultFoundPage(),
    TicketPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: Color(0xff2E2739),
        showUnselectedLabels: true,
        showSelectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xff2E2739),
        onTap: _onTap,
        currentIndex: selectedIndex,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2, size: 20),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play_rectangle, size: 20),
              label: "Watch"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.archivebox_fill,
                size: 20,
              ),
              label: "Media library"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.list_bullet,
                size: 20,
              ),
              label: "More"),
        ],
      ),
      body: _widgetOptions.elementAt(selectedIndex),
    );
  }

  void _onTap(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
