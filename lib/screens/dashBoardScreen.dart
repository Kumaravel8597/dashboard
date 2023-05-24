import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var gridViewPositionsController = StreamController<bool>.broadcast();

  Stream<bool> gridViewPositionController() =>
      gridViewPositionsController.stream;

  // var gridViewController = ScrollController();
  var scroll_visibility = true;

  List<GridListItems> items = [
    GridListItems(
        description: 'Access eBooks, Videos, lecture notes, etc.',
        title: 'Digital Library',
        icon: "assets/images/1-Digital Library.svg"),
    GridListItems(
        description: 'Enroll to online certification courses.',
        title: 'Courses',
        icon: "assets/images/2-Courses.svg"),
    GridListItems(
        description: 'list of College Events',
        title: 'Events',
        icon: "assets/images/3-Events.svg"),
    GridListItems(
        description: 'Take up various online tests',
        title: 'Meetings',
        icon: "assets/images/4-Meetings.svg"),
    GridListItems(
        description: 'Important College Announcements',
        title: 'Discussion Board',
        icon: "assets/images/5-Discussion Board.svg"),
    GridListItems(
        description: 'Connect with institutions members',
        title: 'Members',
        icon: "assets/images/6-Members.svg"),
  ];

  @override
  void initState() {
    print("initStateCalled");
    // gridViewController.addListener(() {
    //   // print(gridViewController.position.pixels);
    //   if (gridViewController.position.pixels > 100){
    //     //gridViewController.position.pixels < gridViewController.position.maxScrollExtent
    //     scroll_visibility = false;
    //   gridViewPositionsController.add(false);}
    //   else{
    //     gridViewPositionsController.add(true);
    //     scroll_visibility = true;}
    //
    //   // setState(() {});
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Color(0xFF52799D), Color(0xFF50A082)],
              ),
            ),
          ),
          leading: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/images/SliderMenu.png",
                  width: 25, height: 25)),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(Icons.search_rounded,
                        color: Colors.white70, size: 35),
                    const SizedBox(width: 20),
                    Image.asset("assets/images/Logo.png")
                  ],
                ))
          ]),
      body: Column(
        children: [
          showFilterMenu(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFF52799D), Color(0xFF50A082)],
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    StreamBuilder<bool>(
                        stream: gridViewPositionController(),
                        initialData: true,
                        builder: (context, snapshot) {
                          return snapshot.data!
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 20, right: 10, bottom: 10),
                                  child: SizedBox(
                                    height: 150,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Row(
                                          children: [
                                            Text(
                                              "Kumaran Engineering College",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(top: 8),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Will Smith Willard Carroll Smith",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(top: 8),
                                          child: Row(
                                            children: [
                                              Icon(Icons.location_on,
                                                  color: Colors.grey, size: 18),
                                              Text(
                                                "Madurai, Tamil Nadu.",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text: 'Profile Link : ',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 13,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          'kumaran.com/willsmith',
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xFF5FC292),
                                                          fontSize: 13,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              ('http://kumaran.com/Willsmith');
                                                            },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 5),
                                                  width: 75,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color:
                                                        const Color(0xFF5FC292),
                                                  ),
                                                  child: const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Share",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Icon(Icons.directions,
                                                          color: Colors.white,
                                                          size: 20),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container();
                        }),
                    Expanded(
                      child: NotificationListener<ScrollEndNotification>(
                        onNotification: (scrollEnd) {
                          final metrics = scrollEnd.metrics;
                          // if (metrics.atEdge) {
                          bool isTop = metrics.pixels > 0;
                          if (isTop) {
                            gridViewPositionsController.add(false);
                            print('TopView');
                          } else {
                            gridViewPositionsController.add(true);
                            print('BottomView');
                          }
                          // }
                          return true;
                        },
                        child: GridView.builder(
                          // controller: gridViewController,
                          padding: const EdgeInsets.all(10.0),
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.white, spreadRadius: 3),
                                ],
                              ),
                              child: Center(
                                  child: Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [
                                         SvgPicture.asset(items[index].icon, height: 65, width: 65),
                                         const SizedBox(height: 5),
                                         Text(
                                          items[index].title,
                                         textAlign: TextAlign.center,
                                          style: const TextStyle(
                                         color: Colors.black, fontSize: 15),),
                                     Text(
                                    items[index].description,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              )),
                              margin: const EdgeInsets.all(10.0),
                            );
                          },
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget showFilterMenu() {
    return StreamBuilder<bool>(
        stream: gridViewPositionController(),
        initialData: true,
        builder: (context, snapshot) {
          return snapshot.data!
              ? Container(
                  padding: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFF52799D), Color(0xFF50A082)],
                    ),
                  ),
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Ink(
                          child: Container(
                            width: 75,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFF5FC292),
                            ),
                            child: const InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.supervisor_account_rounded,
                                      color: Colors.white, size: 25),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.keyboard_arrow_down,
                                      color: Colors.white, size: 25),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          child: Container(
                            width: 85,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFF5FC292),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, color: Colors.white, size: 15),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "Invite",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                            width: 40,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: SvgPicture.asset(
                                    'assets/images/Manage.svg'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                            width: 40,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: SvgPicture.asset(
                                    'assets/images/Update.svg'))),
                      ),
                    ],
                  ),
                )
              : Container();
        });
  }

  @override
  void dispose() {
    // gridViewController.dispose();
    super.dispose();
  }
}

class GridListItems {
  final String description;
  final String title;
  final dynamic icon;

  GridListItems(
      {required this.description, required this.title, required this.icon});
}
