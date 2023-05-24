import 'package:dashboard/screens/dashBoardScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _currentIndex = 0;
  final List<Widget> _children = [
    const DashBoardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          elevation: 5,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem> [
            _showBottomNavigationItems("assets/images/Home.svg",'Home'),
            _showBottomNavigationItems("assets/images/Network.svg",'Network'),
            _showBottomNavigationItems("assets/images/Post.svg",'Post'),
            _showBottomNavigationItems("assets/images/360.svg",'Resources'),
            _showBottomNavigationItems("assets/images/Notifications.svg",'Notification'),
          ],
          onTap: (index) {
            // Navigator on TabBar
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem _showBottomNavigationItems(String imagePath,String title){
    return  BottomNavigationBarItem(
        icon: SvgPicture.asset(imagePath,
            width: 25,
            height: 25),
        label: title);
  }
}
