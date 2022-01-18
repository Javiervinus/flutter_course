import 'package:flutter/material.dart';
import 'package:platzi_course/routes/app_router.dart';
import 'package:platzi_course/screens/calculadora/calculadora.dart';
import 'package:platzi_course/screens/espol/espol_login.dart';
import 'package:platzi_course/screens/home/home.dart';
import 'package:flutter/services.dart';
import 'package:platzi_course/screens/profile/profile.dart';
import 'package:platzi_course/screens/search/search_trips.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black.withOpacity(0.15)));

    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: [SystemUiOverlay.bottom]);

    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      title: 'Flutter Demo',
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: "lato"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _indexTap = 0;
  final List<Widget> widgetsChildren = [
    const HomePage(),
    SearchTrips(),
    EspolLogin(),
    ProfileTripsPage(),
    // Calculadora()
  ];
  void onTapTapped(int index) {
    setState(() {
      _indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[_indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: onTapTapped,
            currentIndex: _indexTap,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.login), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              // BottomNavigationBarItem(icon: Icon(Icons.calculate), label: ""),
            ]),
      ),
    );
  }
}
