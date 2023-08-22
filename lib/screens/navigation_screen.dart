import 'package:aevue/screens/discover_screen.dart';
import 'package:aevue/screens/home_screen.dart';
import 'package:aevue/screens/inBox_screen.dart';
import 'package:aevue/screens/profile_screen.dart';
import 'package:aevue/screens/watch_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  List tabs =[
    HomePage(),
    Discover(),
    Watch(),
    InBox(),
    Profile()
  ];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: navbackgroundColor,
        selectedItemColor: navSelectedItemColor,
        iconSize: 35,
        selectedFontSize: 17,
        showUnselectedLabels: false,
        unselectedItemColor: navUnselectedItemColor,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.compass),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.play),
            label: "Watch",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.commentDots),
            label: "InBox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
