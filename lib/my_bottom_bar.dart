import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

// flashy_tab_bar2 Class
class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    const Center(child: Text("0")),
    const Center(child: Text("1")),
    const Center(child: Text("2")),
    const Center(child: Text("3")),
    const Center(child: Text("4"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('My Bottom Bar'),
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBar:  FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        iconSize: 30,
        showElevation: false, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            activeColor: Colors.black,
            inactiveColor:Colors.lightBlue,
            icon: const Icon(Icons.event),
            title: const Text('Events'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.black,
            inactiveColor:Colors.lightBlue,
            icon: const Icon(Icons.add),
            title: const Text('Add'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.black,
            inactiveColor:Colors.lightBlue,
            icon: const Icon(Icons.search),
            title: const Text('Search'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.black,
            inactiveColor:Colors.lightBlue,
            icon: const Icon(Icons.highlight),
            title: const Text('Highlights'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.black,
            inactiveColor:Colors.lightBlue,
            icon: const Icon(Icons.settings),
            title: const Text('Settings'),
          ),
        ],
      ),
    );
  }
}
