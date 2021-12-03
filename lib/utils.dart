import 'package:flutter/material.dart';

var primaryColor = const Color(0xFFCADCED);

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: const Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue.withOpacity(.4),
    spreadRadius: 2,
    offset: const Offset(7, 7),
    blurRadius: 20,
  )
];