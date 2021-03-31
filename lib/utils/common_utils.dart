import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CommonUtils {
  static showToast(String message, {Color color}) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: "$message",
        backgroundColor: color,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1);
  }
}
