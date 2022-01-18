// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    NavegarRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const NavegarPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileTripsRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileTripsRouteArgs>(
          orElse: () => const ProfileTripsRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: ProfileTripsPage(key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(NavegarRoute.name, path: '/navegar-page'),
        RouteConfig(ProfileTripsRoute.name, path: '/profile-trips-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [NavegarPage]
class NavegarRoute extends PageRouteInfo<void> {
  const NavegarRoute() : super(NavegarRoute.name, path: '/navegar-page');

  static const String name = 'NavegarRoute';
}

/// generated route for
/// [ProfileTripsPage]
class ProfileTripsRoute extends PageRouteInfo<ProfileTripsRouteArgs> {
  ProfileTripsRoute({Key? key})
      : super(ProfileTripsRoute.name,
            path: '/profile-trips-page', args: ProfileTripsRouteArgs(key: key));

  static const String name = 'ProfileTripsRoute';
}

class ProfileTripsRouteArgs {
  const ProfileTripsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProfileTripsRouteArgs{key: $key}';
  }
}
