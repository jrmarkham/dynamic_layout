// Flutter imports:
import 'package:flutter/material.dart';

enum BaseColor {
  white,
  black,
  red,
  maroon,
  yellow,
  yellowDark,
  blue,
  blueDark,
  green,
  greenDark;

//   orange,
//   colorOrangeDark,
//    colorPurple,
//    colorPurpleDeep,
//    colorBrown,
//    colorBrownDark,
//    colorBrownLight,
//    colorBrownFade,
//    colorPink,
// // BLACKS AND WHITES
//    colorGrey,
//    colorGreyDark,
//    colorGreyLight,
//
// // FADES
//    colorTransparent,
//    colorWhiteFade,
//    colorWhiteTextFade;

  Color getColor() {
    switch (this) {
      case BaseColor.white:
        return colorWhite;
      case BaseColor.black:
        return colorBlack;
      case BaseColor.red:
        return colorRed;
      case BaseColor.maroon:
        return colorMaroon;
      case BaseColor.yellow:
        return colorYellow;
      case BaseColor.yellowDark:
        return colorYellowDark;
      case BaseColor.blue:
        return colorBlue;
      case BaseColor.blueDark:
        return colorBlueDark;
      case BaseColor.green:
        return colorGreen;
      case BaseColor.greenDark:
        return colorGreenDark;
    }
  }

  Color getContrastColor() {
    switch (this) {
      case BaseColor.white:
        return colorBlack;
      case BaseColor.black:
        return colorWhite;
      case BaseColor.red:
        return colorGreenDark;
      case BaseColor.maroon:
        return colorGreen;
      case BaseColor.yellow:
        return colorPurpleDeep;
      case BaseColor.yellowDark:
        return colorPurple;
      case BaseColor.blue:
        return colorOrangeDark;
      case BaseColor.blueDark:
        return colorOrange;
      case BaseColor.green:
        return colorMaroon;
      case BaseColor.greenDark:
        return colorRed;
    }
  }

  Color getShadowColor() {
    switch (this) {
      case BaseColor.white:
        return colorWhiteFade;
      case BaseColor.black:
        return colorGreyLight;
      case BaseColor.red:
        return colorMaroon;
      case BaseColor.yellow:
        return colorYellowDark;
      case BaseColor.blue:
        return colorBlueDark;
      case BaseColor.green:
        return colorGreenDark;
      case BaseColor.yellowDark:
      case BaseColor.maroon:
      case BaseColor.blueDark:
      case BaseColor.greenDark:
        return colorBack;
    }
  }
}

// COLORS
const Color colorRed = Colors.red;
const Color colorMaroon = Color(0xFF550000); // ;
const Color colorYellow = Colors.yellow;
const Color colorYellowDark = Color(0xFF9E8E00);
const Color colorBlue = Colors.blue;
const Color colorBlueDark = Color(0xFF092E6E);
const Color colorGreen = Colors.green;
const Color colorGreenDark = Color(0xFF095708);
const Color colorOrange = Colors.orange;
const Color colorOrangeDark = Color(0xFFA67219);
const Color colorPurple = Colors.deepPurple;
const Color colorPurpleDeep = Color(0xFF3B0E69);
const Color colorBrown = Colors.brown;
Color colorBrownDark = const Color(0xFF361F09);
Color colorBrownLight = const Color(0xFF90662B);
Color colorBrownFade = Colors.brown.shade500;
const Color colorPink = Colors.purpleAccent;
// BLACKS AND WHITES
const Color colorGrey = Colors.grey;
const Color colorGreyDark = Color(0xFF444444);
const Color colorGreyLight = Color(0xFFBBBBBB);

const Color colorBlack = Colors.black;
const Color colorWhite = Colors.white;
// FADES
const Color colorTransparent = Colors.transparent;
const Color colorWhiteFade = Colors.white60;
const Color colorWhiteTextFade = Color(0xCCFFFFFF);

// Icon and Icon Button Settings
const Color colorMain = colorBlue; // colorMaroon;
const Color colorSecondary = colorYellowDark; // colorYellowDark;
const Color colorContrast = colorWhite;
const Color colorBack = colorWhite;
const Color colorIcon = colorMain;
const Color colorInactive = colorGrey;
const Color colorAppTrack = colorGreyLight;
const Color colorSelected = colorGrey;
const Color colorError = colorRed;
