import 'package:flutter/material.dart';
import 'package:first_test/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.blue,Colors.green]),
      ),
    ),
  );
}

