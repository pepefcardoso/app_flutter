import 'package:flutter/material.dart';

class Sombras {
  static final List<BoxShadow> sombra1 = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1.0,
      blurRadius: 8.0,
    ),
  ];

  static final List<BoxShadow> sombra2 = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1.0,
      blurRadius: 16.0,
    ),
  ];

  static final List<BoxShadow> sombra3 = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 0.5,
      blurRadius: 4.0,
    ),
  ];
}
