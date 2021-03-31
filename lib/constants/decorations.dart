import 'package:crago/constants/colors.dart';
import 'package:crago/constants/images.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration imageBackgroundDecoration() {
    return BoxDecoration(
      image: DecorationImage(
        colorFilter:
            ColorFilter.mode(APP_PURPLE.withOpacity(0.4), BlendMode.srcATop),
        image: AssetImage(BACKGROUND_IMAGE),
        fit: BoxFit.cover,
      ),
    );
  }

  static BoxDecoration backgroundLoginPage() {
    return BoxDecoration(
      color: APP_WHITE,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    );
  }

  static BoxDecoration orderBoxDecoration() {
    return BoxDecoration(
      color: APP_WHITE,
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}
