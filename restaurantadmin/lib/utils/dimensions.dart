import 'package:flutter/material.dart';

import 'helper.dart';

class Dimensions {
  static double screenHeight = 0.0;
  static double screenWidth = 0.0;

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  static double height60 = screenHeight / factor(screenHeight, 60);
  static double height20 = screenWidth / factor(screenHeight, 20);
  static double width60 = screenWidth / factor(screenWidth, 60);
}
