library responsive_sizer;

import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  static double scaleRatioWidth = 1;
  static double scaleRatioHeight = 1;

  SizeConfig._();

  static final SizeConfig _sizeConfig = SizeConfig._();

  factory SizeConfig() {
    return _sizeConfig;
  }

  static init(BuildContext context, {double? designWidth, double? designHeight}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    if (designWidth != null) scaleRatioWidth = (screenWidth / designWidth);
    if (designHeight != null) scaleRatioHeight = (screenHeight / designHeight);
  }

  static double getHeight(num height) {
    var temp = height * scaleRatioHeight;
    return temp;
  }

  static double getWidth(num width) {
    var temp = width * scaleRatioWidth;
    return temp;
  }
}
