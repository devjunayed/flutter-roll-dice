// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:not_first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: GradientContainer(color: const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 66, 1, 157),
            Color.fromARGB(255, 45, 7, 98),
            Color.fromARGB(255, 66, 1, 157),
          ]),
        ),
      ),
    ),
  );
}
