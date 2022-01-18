// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../main.dart' as _i1;
import '../screens/espol/espol_login.dart' as _i3;
import '../screens/home/home.dart' as _i6;
import '../screens/navegar/navegar.dart' as _i5;
import '../screens/profile/profile.dart' as _i7;
import '../screens/search/search_trips.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    TabRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TabPage());
    },
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    EspolRouter.name: (routeData) {
      final args = routeData.argsAs<EspolRouterArgs>(
          orElse: () => const EspolRouterArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.EspolLoginPage(key: args.key));
    },
    SearchRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SearchTripsPage());
    },
    NavegarRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<NavegarRouterArgs>(
          orElse: () =>
              NavegarRouterArgs(desde: queryParams.getString('desde', "home")));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.NavegarPage(key: args.key, desde: args.desde));
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    ProfileTripsRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileTripsRouteArgs>(
          orElse: () => const ProfileTripsRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.ProfileTripsPage(key: args.key));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(TabRoute.name, path: '/', children: [
          _i2.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: TabRoute.name,
              children: [
                _i2.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name)
              ]),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: TabRoute.name,
              children: [
                _i2.RouteConfig(ProfileTripsRoute.name,
                    path: '', parent: ProfileRouter.name)
              ]),
          _i2.RouteConfig(EspolRouter.name,
              path: 'espol', parent: TabRoute.name),
          _i2.RouteConfig(SearchRouter.name,
              path: 'search', parent: TabRoute.name),
          _i2.RouteConfig(NavegarRouter.name,
              path: 'navegar', parent: TabRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.TabPage]
class TabRoute extends _i2.PageRouteInfo<void> {
  const TabRoute({List<_i2.PageRouteInfo>? children})
      : super(TabRoute.name, path: '/', initialChildren: children);

  static const String name = 'TabRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter({List<_i2.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.EspolLoginPage]
class EspolRouter extends _i2.PageRouteInfo<EspolRouterArgs> {
  EspolRouter({_i8.Key? key})
      : super(EspolRouter.name, path: 'espol', args: EspolRouterArgs(key: key));

  static const String name = 'EspolRouter';
}

class EspolRouterArgs {
  const EspolRouterArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'EspolRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.SearchTripsPage]
class SearchRouter extends _i2.PageRouteInfo<void> {
  const SearchRouter() : super(SearchRouter.name, path: 'search');

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i5.NavegarPage]
class NavegarRouter extends _i2.PageRouteInfo<NavegarRouterArgs> {
  NavegarRouter({_i8.Key? key, String desde = "home"})
      : super(NavegarRouter.name,
            path: 'navegar',
            args: NavegarRouterArgs(key: key, desde: desde),
            rawQueryParams: {'desde': desde});

  static const String name = 'NavegarRouter';
}

class NavegarRouterArgs {
  const NavegarRouterArgs({this.key, this.desde = "home"});

  final _i8.Key? key;

  final String desde;

  @override
  String toString() {
    return 'NavegarRouterArgs{key: $key, desde: $desde}';
  }
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.ProfileTripsPage]
class ProfileTripsRoute extends _i2.PageRouteInfo<ProfileTripsRouteArgs> {
  ProfileTripsRoute({_i8.Key? key})
      : super(ProfileTripsRoute.name,
            path: '', args: ProfileTripsRouteArgs(key: key));

  static const String name = 'ProfileTripsRoute';
}

class ProfileTripsRouteArgs {
  const ProfileTripsRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'ProfileTripsRouteArgs{key: $key}';
  }
}
