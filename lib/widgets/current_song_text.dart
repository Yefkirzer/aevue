import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentSong extends StatelessWidget {
  int songsInPlaylist;
  int currentSong;
  Color color;

   CurrentSong({super.key,required this.currentSong, required this.songsInPlaylist,required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.remove_red_eye_outlined,color: color,),
        SizedBox(
          width: 5,
        ),
        Text("${currentSong}/${songsInPlaylist}",
          style: TextStyle(
              fontSize: 14,
              color: color
          ),),
      ],
    );
  }
}
