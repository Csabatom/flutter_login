library dash.globals;

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

GlobalKey<InnerDrawerState> drawerKey = GlobalKey<InnerDrawerState>();

bool admin = true;
String displayFeed = "Posts";
String activity = "Feed";

bool internetConnection = false;

String community = "Events";

// final assetsAudioPlayer = AssetsAudioPlayer();
//final clipsNoSignalAP = AssetsAudioPlayer();
final clickSoundEffectAP = AssetsAudioPlayer();
String user = "Nyirom2";

String birthday = "Birthday";

// Color secondaryGradient1 = Color(0xffDA1211);
// Color secondaryGradient2 = Color(0xffFF7E00);
// Color drawerColor1 = Color(0xff101010);
// Color drawerColor2 = Color(0xff101010);
// Color drawerItemGradient1 = Color(0xfff2f2f2);
// Color drawerItemGradient2 = Color(0xfff2f2f2);
// Color mainGradient1 = Color(0xffff7e00);
// Color mainGradient2 = Color(0xffff7e00);

// Color secondaryGradient1 = Color(0xff0059b3);
// Color secondaryGradient2 = Color(0xff3E0155);
// Color drawerColor1 = Color(0xff0059b3);
// Color drawerColor2 = Color(0xff2B003A);
// Color drawerItemGradient1 = Color(0xfff2f2f2);
// Color drawerItemGradient2 = Color(0xfff2f2f2);
// Color mainGradient1 = Color(0xff0059b3);
// Color mainGradient2 = Color(0xff2B003A);

// Color secondaryGradient1 = Color(0xff0059b3);
// Color secondaryGradient2 = Color(0xff3E0155);
// Color drawerColor1 = Color(0xff101010);
// Color drawerColor2 = Color(0xff101010);
// Color drawerItemGradient1 = Color(0xfff2f2f2);
// Color drawerItemGradient2 = Color(0xfff2f2f2);
// Color mainGradient1 = Color(0xff0059b3);
// Color mainGradient2 = Color(0xff2B003A);

// Color secondaryGradient1 = Color(0xff0059b3);
// Color secondaryGradient2 = Color(0xff001a33);
// Color drawerColor1 = Color(0xff101010);
// Color drawerColor2 = Color(0xff101010);
// Color drawerItemGradient1 = Color(0xfff2f2f2);
// Color drawerItemGradient2 = Color(0xfff2f2f2);
// Color mainGradient1 = Color(0xff0059b3);
// Color mainGradient2 = Color(0xff001a33);

Color secondaryGradient1 = Color(0xffffffff);
Color secondaryGradient2 = Color(0xffffffff);
Color navigationBarColor1 = Color(0xffffffff);
Color navigationBarColor2 = Color(0xffffffff);
Color navigationBarChoosenGradient1 = Color(0xfff2f2f2);
Color navigationBarChoosenGradient2 = Color(0xfff2f2f2);
Color navigationGradient1 = Color(0xff0059b3);
Color navigationGradient2 = Color(0xff2B003A);
Color navigationBar1 = Color(0xff202020);
Color navigationBar2 = Color(0xff202020);
Color mainGradient1 = Color(0xff000000);
Color mainGradient2 = Color(0xff000000);

// Color secondaryGradient1 = Color(0xff141d24);
// Color secondaryGradient2 = Color(0xff141d24);
// Color drawerColor1 = Color(0xff101010);
// Color drawerColor2 = Color(0xff101010);
// Color drawerItemGradient1 = Color(0xfff2f2f2);
// Color drawerItemGradient2 = Color(0xfff2f2f2);
// Color navigationGradient1 = Color(0xff0059b3);
// Color navigationGradient2 = Color(0xff2B003A);
// Color mainGradient1 = Color(0xff141d24);
// Color mainGradient2 = Color(0xff141d24);

// 0059b3 és 001a33

// void main() async {
//   internetConnection = await checkInternetConnection();
// }

// Future<bool> checkInternetConnection () async {
//   var connectivityResult = await (Connectivity().checkConnectivity());
//   var toReturn;
//   if (connectivityResult == ConnectivityResult.mobile) {
//     // I am connected to a mobile network.
//     toReturn = true;
//   } else if (connectivityResult == ConnectivityResult.wifi) {
//     // I am connected to a wifi network.
//     toReturn = true;
//   } else {
//     toReturn = false;
//   }
//   return toReturn;
// }

playClickSound() {
  clickSoundEffectAP.setVolume(20);
  clickSoundEffectAP.play();
}

ImageProvider neonCrownImage;