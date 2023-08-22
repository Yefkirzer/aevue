import 'package:aevue/widgets/app_large_text.dart';
import 'package:aevue/widgets/app_small_text.dart';
import 'package:aevue/widgets/current_song_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class PlaylistContainer extends StatefulWidget {
  String image;
  Color backgroundColor;
  double seekValue;
  String largeText;
  String smallText;
  Color smallTextColor;
  int songsInPlaylist;
  int currentSong;
  Color currentSongColor;

   PlaylistContainer({super.key,required this.image,
     required this.backgroundColor,required this.seekValue,
     required this.largeText,
     required this.smallText,
     required this.smallTextColor,
     required this.currentSong,
     required this.songsInPlaylist,
     required this.currentSongColor,
   });

  @override
  State<PlaylistContainer> createState() => _PlaylistContainerState();
}

class _PlaylistContainerState extends State<PlaylistContainer> {
  // double _value =50.0;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 403,
      decoration: BoxDecoration(
        color: playListContainerColor,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
        BoxShadow(
        color: widget.backgroundColor,
        blurRadius: 4,
        offset: Offset(-1, -8), // Shadow position
      ),
      ],
      ),
      child: Stack(
        children: [
          Positioned(
              top: 12,
              bottom: 103,
              left: 12,
              right: 12,
              child: Container(
            height: 185,
            width: 321,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/${widget.image}")
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          )),
           Positioned(
            top: 268,
             // left: 249,
              right: 32,
              child:
              Container(
                height: 64,
                width: 64,
                child: FloatingActionButton(
                  child: Icon(Icons.play_arrow,size: 40,),
                  backgroundColor: playButtonbackgroundColor,
                  foregroundColor: Colors.white,
                  onPressed: () {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
                ),
              ),
           ),
            Positioned(
              bottom: 44,
              left: 24,
              right: 24,
              child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppLargeText(text: widget.largeText,size: 20,fontWeight: FontWeight.bold,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppSmallText(text:widget.smallText, color: widget.smallTextColor,),
                  CurrentSong(currentSong: widget.currentSong, songsInPlaylist: widget.songsInPlaylist, color: widget.currentSongColor,)
                ],
              ),
            ],
          )),
          Positioned(
              bottom: 24,
              left: 2,
              right: 2,
              child:
          Container(
            height: 4,
            child: SliderTheme(
              data: SliderThemeData(
                  // thumbColor: CupertinoColors.white,
                  thumbShape: widget.seekValue==0.0 || widget.seekValue== 100.0?RoundSliderThumbShape(enabledThumbRadius: 0):RoundSliderThumbShape(enabledThumbRadius: 4)),
              child: Slider(
                min: 0.0,
                max: 100.0,
                activeColor: Color.fromRGBO(242,188,61,1),
                inactiveColor:Color.fromRGBO(43, 43, 43, 1),
                thumbColor:widget.seekValue==0.0 || widget.seekValue== 100.0? Colors.black45 :Color.fromRGBO(251, 236, 199, 1),
                value: widget.seekValue,
                onChanged: (value) {
                  setState(() {
                    widget.seekValue = value;
                  });
                },
              ),
            ),
          )
),
        ],
      ),
    ) ;
  }
}
