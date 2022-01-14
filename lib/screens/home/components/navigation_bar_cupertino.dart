import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_course/screens/profile/profile.dart';
import 'package:platzi_course/screens/search/search_trips.dart';

import '../home.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            activeColor: Colors.deepPurple,
            inactiveColor: Colors.grey,
            border: const Border(top: BorderSide.none),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 25,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
              ),
            ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => const Home(),
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => const SearchTrips(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => const ProfileTrips(),
              );
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => const Home(),
              );
          }
        },
      ),
    );
  }
}
