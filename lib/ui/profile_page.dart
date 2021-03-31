import 'package:crago/constants/colors.dart';
import 'package:crago/constants/decorations.dart';
import 'package:crago/constants/strings.dart';
import 'package:crago/constants/styles.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: APP_BACKGROUND_COLOR,
        child: Column(
          children: [
            // ADDS BLOCK
            Container(
              height: 87,
              // child: Text(
              //   ADS_SPACE,
              // ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: APP_WHITE,
              child: Row(
                children: [
                  Text(
                    PROFILE,
                    style: AppStyles.titleStyle(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                children: [
                  Container(
                    height: 150,
                    decoration: AppDecoration.orderBoxDecoration(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: ListTile(
                      leading: Icon(
                        Icons.info_outlined,
                        color: APP_BLACK,
                      ),
                      title: Text(
                        "FAQ",
                        style: AppStyles.keyStyle(),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: ListTile(
                      leading: Icon(
                        Icons.description_outlined,
                        color: APP_BLACK,
                      ),
                      title: Text(
                        "Privacy Policy",
                        style: AppStyles.keyStyle(),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: ListTile(
                      leading: Icon(
                        Icons.my_library_books_outlined,
                        color: APP_BLACK,
                      ),
                      title: Text(
                        "Terms & Conditions",
                        style: AppStyles.keyStyle(),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: ListTile(
                      leading: Icon(
                        Icons.chat,
                        color: APP_BLACK,
                      ),
                      title: Text(
                        "Tell a Friend",
                        style: AppStyles.keyStyle(),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: ListTile(
                      leading: Icon(
                        Icons.star_border_outlined,
                        color: APP_BLACK,
                      ),
                      title: Text(
                        "Rate Us",
                        style: AppStyles.keyStyle(),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: ListTile(
                      leading: Icon(
                        Icons.wb_incandescent_outlined,
                        color: APP_BLACK,
                      ),
                      title: Text(
                        "Your Suggestions",
                        style: AppStyles.keyStyle(),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: ListTile(
                      leading: Icon(
                        Icons.call,
                        color: APP_BLACK,
                      ),
                      title: Text(
                        "Contact Us",
                        style: AppStyles.keyStyle(),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: APP_BLACK,
                      ),
                      title: Text(
                        "Logout",
                        style: AppStyles.keyStyle(),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              // child: Text(
              //   ADS_SPACE,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
