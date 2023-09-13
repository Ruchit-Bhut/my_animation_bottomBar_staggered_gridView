import 'package:flutter/material.dart';
import 'package:my_animation/animated_notch_bottom_bar.dart';
import 'package:my_animation/hexagon.dart';
import 'package:my_animation/my_animation_page.dart';
import 'package:my_animation/my_bottom_bar.dart';
import 'package:my_animation/my_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              const Text(
                'Please select',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              const Divider(
                thickness: 5,
                color: Colors.white60,
                indent: 80,
                endIndent: 80,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MyAnimationPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Animation Page',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MyAnimatedNotchBottomBar(),
                          ),
                        );
                      },
                      child: const Text(
                        'Animated Notch Bottom Bar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MyBottomBar(),
                          ),
                        );
                      },
                      child: const Text(
                        'My Bottom Bar',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MyStaggeredGridView(),
                          ),
                        );
                      },
                      child: const Text(
                        'My Staggered GridView',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                            const Hexagon(),
                          ),
                        );
                      },
                      child: const Text(
                        'Hexagon',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
