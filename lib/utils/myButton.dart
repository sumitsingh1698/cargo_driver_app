import 'package:crago/constants/colors.dart';
import 'package:crago/constants/styles.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  MyButton({this.title = "", this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: AppDecoation.backgroundLoginPage(),
      child: MaterialButton(
        minWidth: double.maxFinite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: this.onPressed,
        color: APP_PURPLE,
        child: Text(
          title,
          style: AppStyles.buttonTextStyle(),
        ),
      ),
    );
  }
}
