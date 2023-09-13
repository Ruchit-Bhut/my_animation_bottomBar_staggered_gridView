import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lottie/lottie.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyAnimationPage extends StatefulWidget {
  const MyAnimationPage({super.key});

  @override
  State<MyAnimationPage> createState() => _MyAnimationPageState();
}

class _MyAnimationPageState extends State<MyAnimationPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController controller;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    controller.dispose();
  }

  bool dark = false;

  bool ebools = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    if (dark == false) {
                      dark = !dark;
                      _controller.forward();
                    } else {
                      dark = !dark;
                      _controller.reverse();
                    }
                  },
                  child: Lottie.network(
                    'https://lottie.host/96540ddf-3bf6-4408-9bad-5e45d7a81b5b/6M2pxLgBou.json',
                    controller: _controller,
                    height: 70,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if (ebools == false) {
                      ebools = !ebools;
                      controller.forward();
                    } else {
                      ebools = !ebools;
                      controller.reverse();
                    }
                  },
                  child: Lottie.network(
                    'https://lottie.host/4b7fa308-3a72-4d41-b2a4-76e403d0fd7a/wsi1eiP1tD.json',
                    controller: controller,
                    height: 100,
                  ),
                ),
              ],
            ),
            Slidable(
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: ((context) {
                      // call number
                    }),
                    backgroundColor: Colors.green,
                    icon: Icons.phone,
                  ),
                  SlidableAction(
                    onPressed: ((context) {
                      // text number
                    }),
                    backgroundColor: Colors.blue,
                    icon: Icons.chat,
                  ),
                ],
              ),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: ((context) {
                      // delete
                    }),
                    backgroundColor: Colors.red,
                    icon: Icons.delete,
                  ),
                ],
              ),
              child: Container(
                color: Colors.grey[300],
                child: const ListTile(
                  title: Text('Ruchit Bhut'),
                  subtitle: Text('Welcome to Lottie'),
                  leading: Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
