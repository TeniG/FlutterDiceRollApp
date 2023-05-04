import 'package:flutter/material.dart';
import 'package:flutter_role_dice_app/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorList: [
          Color.fromARGB(255, 224, 61, 2),
          Color.fromARGB(253, 252, 247, 87)
        ]),
      ),
    ),
  );
}
