import 'package:aevue/widgets/playlist_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors.dart';
import '../constants.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15, 40, 15, 32),
              child: ShaderMask(
                shaderCallback: (bounds)=>
                    RadialGradient(
                        center: Alignment.topLeft,
                        radius: 5,
                        colors:[ Color.fromRGBO(242, 188, 61, 1),
                          Colors.red]).createShader(bounds),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Trending Today",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white,
                    ),),
                ),
              ),
            ),
            ListView.builder(
                itemCount: playlist.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context , i){
                  return Container(
                    margin: EdgeInsets.only(bottom: 32,left: 15,right: 15),
                    child: PlaylistContainer(image:playlist[i].image, backgroundColor: playlist[i].backgroundColor,
                      seekValue: playlist[i].seekValue, largeText: playlist[i].largeText, smallText: playlist[i].smallText, smallTextColor: playlist[i].smallTextColor,
                      currentSong: playlist[i].currentSong, songsInPlaylist: playlist[i].songsInPlaylist, currentSongColor: playlist[i].currentSongColor,

                    ),
                  );
                }),
            Container(
              width: 270,
              height: 245,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/verfication.png")
                  )
              ),
            ),
            AppLargeText(text: "Check back Soon for new clips",size: 25,fontWeight: FontWeight.bold,),
            Container(
                padding: EdgeInsets.only(left: 15 , right: 15),
                child: AppLargeText(text: "and creator content.",size: 25,fontWeight: FontWeight.bold,)),
            SizedBox(height: 8,),
            AppSmallText(text: "In the mean time learn more", color: Colors.grey),
            SizedBox(height: 40,),
            TextButton(
              onPressed: (){},
              child: Container(
                margin: EdgeInsets.only(left: 15,right: 15,bottom: 23),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(56),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color.fromRGBO(242, 188, 61, 1), Colors.black26]
                    ),
                    border: Border.all(color: Colors.orange.withOpacity(0.3))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.local_fire_department_rounded,color: buttonColor,size: 30,),
                    AppLargeText(text: "Tap to Learn More",size: 25,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
