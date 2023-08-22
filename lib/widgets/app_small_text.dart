import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSmallText extends StatelessWidget {

  String text;
  Color color;

   AppSmallText({super.key, required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          fontSize: 14,
          color: color,
      ),);
  }
}
