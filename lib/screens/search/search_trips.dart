import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/reviews/review_list.dart';

class SearchTrips extends StatefulWidget {
  SearchTrips({Key? key}) : super(key: key);

  @override
  _SearchTripsState createState() => _SearchTripsState();
}

class _SearchTripsState extends State<SearchTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 140.0,
            backgroundColor: Colors.black,
            toolbarHeight: 50,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text('SliverAppBar'),
              background: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/mountain_stars.jpeg")),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          offset: Offset(0, 7)),
                    ]),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}


// class SearchTrips extends StatelessWidget {
//   SearchTrips({Key? key}) : super(key: key);
//   bool _pinned = true;
//   bool _snap = false;
//   bool _floating = false;
//   @override
//   Widget build(BuildContext context) {
    
//     // return ListView(
//     //   physics: const NeverScrollableScrollPhysics(),
//     //   shrinkWrap: true,
//     //   padding: EdgeInsets.zero,
//     //   children: [
//     //     Stack(
//     //       alignment: const Alignment(0, 0),
//     //       children: [
//     //         Container(
//     //           height: 320,
//     //           decoration: const BoxDecoration(
//     //               image: DecorationImage(
//     //                   fit: BoxFit.cover,
//     //                   image: AssetImage("assets/images/mountain_stars.jpeg")),
//     //               boxShadow: [
//     //                 BoxShadow(
//     //                     color: Colors.black38,
//     //                     blurRadius: 15,
//     //                     offset: Offset(0, 7)),
//     //               ]),
//     //         ),
//     //         const Text(
//     //           "TITULO DE PRUEBA",
//     //           style: TextStyle(color: Colors.white),
//     //         )
//     //       ],
//     //     ),
//     //     Column(
//     //       children: [ReviewList(numberReviews: 8)],
//     //     )
//     //   ],
//     // );
//   }
// }
