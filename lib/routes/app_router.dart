import 'package:auto_route/auto_route.dart';
import 'package:platzi_course/main.dart';
import 'package:platzi_course/screens/espol/espol_login.dart';
import 'package:platzi_course/screens/home/home.dart';
import 'package:platzi_course/screens/navegar/navegar.dart';
import 'package:flutter/material.dart';
import 'package:platzi_course/screens/profile/profile.dart';
import 'package:platzi_course/screens/search/search_trips.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: TabPage, path: '/', children: [
      AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
          ]),
      AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: ProfileTripsPage,
            ),
          ]),
      AutoRoute(
        path: 'espol',
        name: 'EspolRouter',
        page: EspolLoginPage,
      ),
      AutoRoute(
        path: 'search',
        name: 'SearchRouter',
        page: SearchTripsPage,
      ),
      AutoRoute(
        path: 'navegar',
        name: 'NavegarRouter',
        page: NavegarPage,
      )
    ]),
  ],
)
class $AppRouter {}
