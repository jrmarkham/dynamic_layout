import '../globals.dart';

const double menuHeightFactorWeb = 0.1;
const double menuHeightFactorMobile = 0.12;
const double menuHeightFactorTablet = 0.09;
const double menuHeightFactorTV = 0.09;

// padding
const double corePaddingFactorWeb = 0.035;
const double corePaddingFactorMobile = 0.05;
const double corePaddingFactorTablet = 0.025;
const double corePaddingFactorTV = 0.025;

const double edgePaddingFactorWeb = 0.05;
const double edgePaddingFactorMobile = 0.075;
const double edgePaddingFactorTablet = 0.065;
const double edgePaddingFactorTV = 0.065;


// font sizes
const double mainFontSizeFactorWeb = 0.115;
const double mainFontSizeFactorMobile = 0.125;
const double mainFontSizeFactorTablet = 0.115;
const double mainFontSizeFactorTV = 0.115;


enum DeviceType {
  mobile, web, tablet, tv;

  double getMenuHeight() {
    switch (this) {
      case DeviceType.mobile:
        return deviceHeight * menuHeightFactorMobile;
      case DeviceType.web:
        return deviceHeight * menuHeightFactorWeb;
      case DeviceType.tablet:
        return deviceHeight * menuHeightFactorTablet;
      case DeviceType.tv:
        return deviceHeight * menuHeightFactorTV;
    }
  }

  double getMainFontSize() {
    switch (this) {
      case DeviceType.mobile:
        return deviceWidth * mainFontSizeFactorMobile;
      case DeviceType.web:
        return  deviceWidth * mainFontSizeFactorWeb;
      case DeviceType.tablet:
        return  deviceWidth * mainFontSizeFactorTablet;
      case DeviceType.tv:
        return deviceWidth * mainFontSizeFactorTV;
    }
  }

  double getCorePadding() {
    switch (this) {
      case DeviceType.mobile:
        return deviceWidth * corePaddingFactorMobile;
      case DeviceType.web:
        return  deviceWidth * corePaddingFactorWeb;
      case DeviceType.tablet:
        return  deviceWidth * corePaddingFactorTablet;
      case DeviceType.tv:
        return deviceWidth * corePaddingFactorTV;
    }
  }

  double getEdgePadding() {
    switch(this){
      case DeviceType.mobile: return deviceWidth * edgePaddingFactorMobile;
      case DeviceType.web: return deviceWidth * edgePaddingFactorWeb;
      case DeviceType.tablet: return deviceWidth * edgePaddingFactorTablet;
      case DeviceType.tv: return deviceWidth * edgePaddingFactorTV;
    }

  }
}


// BUTTON SIZES
// SAMPLE TEST STUFF
const double BUTTON_LARGE_FACTOR = 0.55;
const double BUTTON_HALF_FACTOR = 0.5;
const double BUTTON_MEDIUM_FACTOR = 0.25;
const double BUTTON_SMALL_FACTOR = 0.15;
const double BUTTON_HEIGHT_ASPECT_FACTOR = 0.35;

// this would normal be with widget assets for buttons
enum ButtonSize {
  // based upon device width
  large,
  half,
  medium,
  small,
  // based on device longest dimension
  largeLong,
  halfLong,
  mediumLong,
  smallLong,
  // based on device shortest dimension
  largeShort,
  halfShort,
  mediumShort,
  smallShort;

  double getWidth() {
    switch (this) {
      case ButtonSize.large:
        return deviceWidth * BUTTON_LARGE_FACTOR;
      case ButtonSize.half:
        return deviceWidth * BUTTON_HALF_FACTOR;
      case ButtonSize.medium:
        return deviceWidth * BUTTON_MEDIUM_FACTOR;
      case ButtonSize.small:
        return deviceWidth * BUTTON_SMALL_FACTOR;
      case ButtonSize.largeLong:
        return deviceWidth > deviceHeight
            ? deviceWidth * BUTTON_LARGE_FACTOR
            : deviceHeight * BUTTON_LARGE_FACTOR;
      case ButtonSize.halfLong:
        return deviceWidth > deviceHeight
            ? deviceWidth * BUTTON_HALF_FACTOR
            : deviceHeight * BUTTON_HALF_FACTOR;
      case ButtonSize.mediumLong:
        return deviceWidth > deviceHeight
            ? deviceWidth * BUTTON_MEDIUM_FACTOR
            : deviceHeight * BUTTON_MEDIUM_FACTOR;
      case ButtonSize.smallLong:
        return deviceWidth > deviceHeight
            ? deviceWidth * BUTTON_SMALL_FACTOR
            : deviceHeight * BUTTON_SMALL_FACTOR;
      case ButtonSize.largeShort:
        return deviceWidth < deviceHeight
            ? deviceWidth * BUTTON_LARGE_FACTOR
            : deviceHeight * BUTTON_LARGE_FACTOR;
      case ButtonSize.halfShort:
        return deviceWidth < deviceHeight
            ? deviceWidth * BUTTON_HALF_FACTOR
            : deviceHeight * BUTTON_HALF_FACTOR;
      case ButtonSize.mediumShort:
        return deviceWidth < deviceHeight
            ? deviceWidth * BUTTON_MEDIUM_FACTOR
            : deviceHeight * BUTTON_MEDIUM_FACTOR;
      case ButtonSize.smallShort:
        return deviceWidth < deviceHeight
            ? deviceWidth * BUTTON_SMALL_FACTOR
            : deviceHeight * BUTTON_SMALL_FACTOR;
    }
  }

  double getHeight() => getWidth() * BUTTON_HEIGHT_ASPECT_FACTOR;
}