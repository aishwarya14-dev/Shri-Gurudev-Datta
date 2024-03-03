
import 'package:flutter/material.dart';
import 'package:shri_gurudev_datta/youtube_videos/youtube_videos_screen.dart';

import '../../menu/menu_screen.dart';
import 'animated_home_screen.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int currentPageIndex = 0;
    late int drawerIndex = 0;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
          key: _scaffoldKey,
          bottomNavigationBar: NavigationBar(
            elevation: 2.0,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            backgroundColor: const Color.fromARGB(255, 166, 156, 70),
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
                  //  if (currentPageIndex == 2 && _scaffoldKey.currentState != null) {
                  // _scaffoldKey.currentState!.openEndDrawer();} 
              });
            },
            indicatorColor: const Color.fromARGB(183, 240, 194, 134),
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Icons.home,
                color: Colors.white,
                ),
                icon: Icon(Icons.home_outlined,
                color: Colors.white,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.youtube_searched_for,
                color: Colors.white,
                ),
                selectedIcon: Icon(Icons.youtube_searched_for,
                color: Colors.white,
                ),
                label: 'Youtube Videos',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.menu,
                color: Colors.white,
                ),
                icon: Icon(Icons.menu_outlined,
                color: Colors.white,
                ),
                label: 'Menu',
              ),
            ],
          ),
          body: _loadPage(context),
        ),
    );
  }
 
  _loadPage(context){
   switch(currentPageIndex){
    case 0:
    return AnimatedHomeScreen();

    case 1:
    return DemoApp();

    case 2:
    return Menu();

    default:
    return AnimatedHomeScreen();
   }
  }

}
