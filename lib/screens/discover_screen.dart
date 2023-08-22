import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {


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
