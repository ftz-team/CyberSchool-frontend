import 'package:cyberschool/ui/elements/Colors.dart';
import 'package:cyberschool/ui/elements/Fonts.dart';
import 'package:cyberschool/ui/screens/pages/bonusesList.dart';
import 'package:cyberschool/ui/screens/pages/history.dart';
import 'package:cyberschool/ui/screens/pages/testsList.dart';
import 'package:cyberschool/ui/widgets/NavBar.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget{
  @override
  mainScreenState createState()=>mainScreenState();
}

class mainScreenState extends State<mainScreen>{
  int _currentIndex = 0;
  PageController _pageController;

  List<Widget> pages = [
    TestsScreen(),
    BonusesListScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black),
            title: Text("Квесты",style: UIFonts.navItem(context)),
            activeIcon: Icon(Icons.home,color: UIColors.blue),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars,color: Colors.black),
            title: Text("Бонусы",style: UIFonts.navItem(context)),
            activeIcon: Icon(Icons.stars,color: UIColors.blue),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,color: Colors.black),
            title: Text("История",style: UIFonts.navItem(context)),
            activeIcon: Icon(Icons.history,color: UIColors.blue),

          )
        ],
        onTap: (index){
          setState(() {
            _currentIndex =  index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}