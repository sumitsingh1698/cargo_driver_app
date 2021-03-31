import 'package:crago/constants/colors.dart';
import 'package:flutter/painting.dart';

class AppStyles {
  static TextStyle companyTitleStyle() {
    return new TextStyle(fontSize: 30, color: APP_WHITE);
  }

  static TextStyle headTitleStyle() {
    return new TextStyle(
        fontSize: 30, color: APP_BLACK, fontWeight: FontWeight.bold);
  }

  static TextStyle titleStyle() {
    return new TextStyle(
        fontSize: 22, color: APP_BLACK, fontWeight: FontWeight.bold);
  }

  //Order key style
  static TextStyle keyStyle() {
    return new TextStyle(
        fontSize: 16, color: APP_BLACK, fontWeight: FontWeight.bold);
  }

  //Order value style
  static TextStyle valueStyle({Color color = APP_BLACK}) {
    return new TextStyle(
      fontSize: 16,
      color: color,
    );
  }

  static TextStyle buttonTextStyle() {
    return new TextStyle(
      fontSize: 17,
      color: APP_WHITE,
    );
  }
}
