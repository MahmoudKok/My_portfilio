import 'package:flutter/widgets.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  static void init(BuildContext context) {
    print('Hello');
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 640 is the layout height that designer use
  return (inputHeight / 640.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 360 is the layout width that designer use
  return (inputWidth / 360.0) * screenWidth;
}

double setHightForDesktop(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 640 is the layout height that designer use
  return (inputHeight / 1080.0) * screenHeight;
}

double setWidthForDesktop(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 360 is the layout width that designer use
  return (inputWidth / 1920.0) * screenWidth;
}
