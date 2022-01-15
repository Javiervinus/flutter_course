import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/navigation_bar_cupertino.dart';
import 'package:platzi_course/screens/home/home.dart';
import 'package:flutter/services.dart';
import 'package:platzi_course/screens/profile/profile.dart';
import 'package:platzi_course/screens/search/search_trips.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: [SystemUiOverlay.bottom]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const App(),
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
  final List<Widget> widgetsChildren = [Home(), SearchTrips(), ProfileTrips()];
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
            onTap: onTapTapped,
            currentIndex: _indexTap,
            showSelectedLabels: false, // <-- HERE
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ]),
      ),
    );
  }
}
