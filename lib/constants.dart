import 'dart:ui';
import 'package:aevue/widgets/playlist_container.dart';
import 'package:flutter/material.dart';

List<PlaylistContainer> playlist= [
  PlaylistContainer(image:"fgc.png", backgroundColor: Color.fromRGBO(123, 18, 175, 0.3),
    seekValue: 0, largeText: 'FGC Playlist', smallText: '+18 New Videos', smallTextColor: Color.fromRGBO(242, 188, 61, 1),
    currentSong: 0, songsInPlaylist: 18, currentSongColor: Color.fromRGBO(242, 188, 61, 1) ,),
  PlaylistContainer(image: "smash.png", backgroundColor: Color.fromRGBO(248, 181, 74, 0.3),
    seekValue: 50, largeText: 'Smash Playlist', smallText: '+10 New Videos', smallTextColor: Color.fromRGBO(242, 188, 61, 1),
    currentSong: 15, songsInPlaylist: 30, currentSongColor: Colors.grey,),
  PlaylistContainer(image: "valorant.png", backgroundColor: Color.fromRGBO(189, 9, 18, 0.3),
    seekValue: 100, largeText: 'Valorant Playlist', smallText: '+21 New Videos', smallTextColor:
    Colors.grey, currentSong: 21, songsInPlaylist: 21, currentSongColor: Colors.grey,)
];