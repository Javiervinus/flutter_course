import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platzi_course/routes/app_router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black.withOpacity(0.15)));

    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: [SystemUiOverlay.bottom]);

    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Curso",
        theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: "lato"),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate());
  }
}

class TabPage extends StatelessWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      // appBarBuilder: (_, tabsRouter) => AppBar(
      //   backgroundColor: Colors.indigo,
      //   title: const Text("fullter"),
      //   centerTitle: true,
      //   leading: const AutoBackButton(),
      // ),
      routes: [
        HomeRouter(),
        EspolRouter(),
        const ProfileRouter(),
        SearchRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
                selectedColor: Colors.indigo,
                icon: const Icon(Icons.home),
                title: const Text("")),
            SalomonBottomBarItem(
                selectedColor: Colors.indigo,
                icon: const Icon(Icons.unarchive_rounded),
                title: const Text("")),
            SalomonBottomBarItem(
                selectedColor: Colors.indigo,
                icon: const Icon(Icons.person),
                title: const Text("")),
          ],
        );
      },
    );
  }
}
