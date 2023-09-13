import 'dart:math';

import 'package:flutter/material.dart';

class Hexagon extends StatefulWidget {
  const Hexagon({Key? key}) : super(key: key);

  @override
  State<Hexagon> createState() => _HexagonState();
}

class _HexagonState extends State<Hexagon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Hexagon",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: ClipPath(
          clipper: _Hexagon(),
          child: Container(
            color: Colors.red,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}

class _Hexagon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.25, 0);
    path.lineTo(size.width * 0.75, 0);
    path.lineTo(size.width, size.height * sqrt(3) / 4);
    path.lineTo(size.width * 0.75, size.height * sqrt(3) / 2);
    path.lineTo(size.width * 0.25, size.height * sqrt(3) / 2);
    path.lineTo(0, size.height * sqrt(3) / 4);
    path.lineTo(size.width * 0.25, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
