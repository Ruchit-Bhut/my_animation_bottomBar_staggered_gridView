import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyStaggeredGridView extends StatefulWidget {
  const MyStaggeredGridView({super.key});

  @override
  State<MyStaggeredGridView> createState() => _MyStaggeredGridViewState();
}

class _MyStaggeredGridViewState extends State<MyStaggeredGridView> {
  List images = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/image5.jpg',
    'assets/images/image6.jpg',
    'assets/images/image7.jpg',
    'assets/images/image8.jpg',
    'assets/images/image9.jpg'
  ];

  List details = [
    'Book reading',
    'night blue sky',
    'Mission Impossible',
    'Flower',
    'Elephant',
    'Hummingbird Blue',
    'Hummingbird',
    'Ethan Hunt',
    'Sylvester Stallone'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.4),
      appBar: AppBar(
        title: const Text(
          'Staggered Grid View',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white, size: 40),
      ),
      body: MasonryGridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  images[index],
                ),
              ),
              Text(
                details[index],
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
