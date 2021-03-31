import 'package:crago/constants/colors.dart';
import 'package:crago/constants/decorations.dart';
import 'package:crago/constants/strings.dart';
import 'package:crago/constants/styles.dart';
import 'package:crago/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timespame) {
      UserProvider userProvider =
          Provider.of<UserProvider>(context, listen: false);
      if (userProvider.isUser()) {
        Navigator.pushNamedAndRemoveUntil(context, HOME_PAGE, (_) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(context, LOGIN_PAGE, (_) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecoration.imageBackgroundDecoration(),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.ac_unit,
              size: 40.0,
              color: APP_WHITE,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              APP_TITLE,
              style: AppStyles.companyTitleStyle(),
            ),
          ],
        )),
      ),
    );
  }
}
