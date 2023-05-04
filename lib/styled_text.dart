import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

//positioned paramter
  StyledText(String text ,{super.key}) : outputText = text;
  String outputText;

  @override
  Widget build(BuildContext context) {
    return  Text(
          outputText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        );

  }

}