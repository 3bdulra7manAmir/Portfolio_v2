import 'package:flutter/material.dart';

class DoorShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, size.height);

    path.lineTo(0, size.height * 0.3);

    path.quadraticBezierTo(
      size.width / 2, 0, 
      size.width, size.height * 0.3,
    );

    path.lineTo(size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}