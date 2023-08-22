import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InBox extends StatefulWidget {
  const InBox({super.key});

  @override
  State<InBox> createState() => _InBoxState();
}

class _InBoxState extends State<InBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Center(
        child: Text(
          "InBox",style: TextStyle(
            color: Colors.white
        ),
        ),
      ),
    );
  }
}