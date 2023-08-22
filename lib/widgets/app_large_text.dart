import 'package:flutter/cupertino.dart';

import '../colors.dart';

class AppLargeText extends StatelessWidget {
  String text;
  double? size;
  FontWeight? fontWeight;
   AppLargeText({super.key, required this.text, this.size,this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: appLargeTextColor,
      ),);
  }
}
