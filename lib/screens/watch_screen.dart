import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Center(
        child: Text(
          "Watch",style: TextStyle(
            color: Colors.white
        ),
        ),
      ),
    );
  }
}