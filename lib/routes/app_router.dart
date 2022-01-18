import 'package:auto_route/auto_route.dart';
import 'package:platzi_course/screens/home/home.dart';
import 'package:platzi_course/screens/navegar/navegar.dart';
import 'package:flutter/material.dart';
import 'package:platzi_course/screens/profile/profile.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    CustomRoute(
        page: NavegarPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    AutoRoute(page: ProfileTripsPage)
  ],
)
class AppRouter extends _$AppRouter {}
