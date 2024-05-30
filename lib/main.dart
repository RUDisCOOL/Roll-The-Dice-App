import 'package:flutter/material.dart';
import 'package:first_app/gradient_app.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientApp(colors: [
          Colors.black,
          Colors.pink,
        ]),
      ),
    ),
  );
}
