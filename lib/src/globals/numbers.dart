import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

const double tabletMinSize = 1000;

// global props
late double deviceWidth;
late double deviceHeight;
late double deviceAspectRatio;
late DeviceType deviceType;
// initialization method called from a single MediaQuery
//
void initializeDeviceDimensions(Size size) {
  deviceWidth = size.width;
  deviceHeight = size.height;
  deviceAspectRatio = size.aspectRatio;

  deviceType = getDeviceType();

  debugPrint("initializeDevice  ");
  debugPrint("--------------------------------");
  debugPrint("deviceType :  $deviceType");
  debugPrint("deviceWidth :  $deviceWidth");
  debugPrint("deviceHeight :  $deviceHeight");
  debugPrint("deviceAspectRatio :  $deviceAspectRatio");

  //

  // test button for scaling tests

  debugPrint("--------------------------------");
  debugPrint("Button by Width (core)");
  debugPrint("Button : w: ${ButtonSize.large.getWidth()} "
      "h: ${ButtonSize.large.getHeight()}");
  debugPrint("Half Button : w: ${ButtonSize.half.getWidth()} "
      "h: ${ButtonSize.half.getHeight()}");
  debugPrint("Medium Button : w: ${ButtonSize.medium.getWidth()} "
      "h: ${ButtonSize.medium.getHeight()}");
  debugPrint("Small Button : w: ${ButtonSize.small.getWidth()} "
      "h: ${ButtonSize.small.getHeight()}");

  debugPrint("--------------------------------");
  debugPrint("Button by Shorter Dimension");
}

DeviceType getDeviceType() {
  if (kIsWeb) {
    return DeviceType.web;
  }
  // TODO(jrmarkham): figure out for tv Devices //
  return deviceWidth < tabletMinSize && deviceHeight < tabletMinSize
      ? DeviceType.mobile
      : DeviceType.tablet;
}
