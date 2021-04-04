import 'package:crago/constants/colors.dart';
import 'package:crago/constants/decorations.dart';
import 'package:crago/constants/strings.dart';
import 'package:crago/constants/styles.dart';
import 'package:crago/providers/user_provider.dart';
import 'package:crago/ui/account_ui/Title_Content_Page.dart';
import 'package:crago/ui/account_ui/login_page.dart';
import 'package:crago/utils/MyInputField.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  final PersistentTabController controller;

  ProfilePage(this.controller);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileState currentState;
  String pageTitle;
  @override
  void initState() {
    currentState = ProfileState.PROFILE;
    pageTitle = PROFILE;
    super.initState();
  }

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
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: APP_WHITE,
              child: Row(
                children: [
                  Text(
                    pageTitle,
                    style: AppStyles.titleStyle(),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                children: [
                  profileTabUI(),
                  profilePageUI(),
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

  Widget profilePageUI() {
    pageTitle = PROFILE;
    return Column(
      children: [
        eachTileUI(
            icon: Icons.info_outlined,
            title: FAQ,
            onTap: () {
              currentState = ProfileState.FAQ;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TitleContentPage(FAQ, currentState)));
            }),
        eachTileUI(
          icon: Icons.description_outlined,
          title: PRIVACY_POLICY,
          onTap: () {
            currentState = ProfileState.PRIVACYPOLICY;
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TitleContentPage(PRIVACY_POLICY, currentState)));
          },
        ),
        eachTileUI(
          icon: Icons.my_library_books_outlined,
          title: TERM_CONDITION,
          onTap: () {
            currentState = ProfileState.TERMSCONDITION;
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TitleContentPage(TERM_CONDITION, currentState)));
          },
        ),
        eachTileUI(
            icon: Icons.chat,
            title: TELL_A_FRIEND,
            onTap: () {
              currentState = ProfileState.TELLAFRIEND;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             TitleContentPage(TELL_A_FRIEND, currentState)));
            }),
        eachTileUI(
            icon: Icons.star_border_outlined,
            title: RATE_US,
            onTap: () {
              currentState = ProfileState.RATEUS;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             TitleContentPage(RATE_US, currentState)));
            }),
        eachTileUI(
            icon: Icons.wb_incandescent_outlined,
            title: YOUR_SUGGESTION,
            onTap: () {
              currentState = ProfileState.YOURSUGGESTION;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TitleContentPage(YOUR_SUGGESTION, currentState)));
            }),
        eachTileUI(
            icon: Icons.call,
            title: CONTACT_US,
            onTap: () {
              currentState = ProfileState.CONTACTUS;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TitleContentPage(CONTACT_US, currentState)));
            }),
        eachTileUI(
            icon: Icons.logout,
            title: LOGOUT,
            onTap: () {
              UserProvider userProvider =
                  Provider.of<UserProvider>(context, listen: false);
              userProvider.logout().then((_) {
                pushNewScreen(context, screen: LoginPage(), withNavBar: false);
              });
            }),
      ],
    );
  }

  Widget profileTabUI() {
    return Container(
      // height: 180,
      margin: EdgeInsets.all(5),

      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://expertphotography.com/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text("Welcome",
                    style: AppStyles.valueStyle(color: Colors.grey)),
                Text(
                  "Sumit kumar",
                  style: AppStyles.titleStyle(),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Edit Profile",
                  style: AppStyles.linkTextStyle(),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "These excellant intentions were strengthed when heenterd the Father Superior's diniing-room",
                  style: AppStyles.valueStyle(),
                )
              ],
            ),
          ),
        ],
      ),
      decoration: AppDecoration.orderBoxDecoration(),
    );
  }

  Widget eachTileUI({
    IconData icon,
    String title,
    Function onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: AppDecoration.orderBoxDecoration(),
        child: ListTile(
          leading: Icon(
            icon,
            color: APP_BLACK,
          ),
          title: Text(
            "$title",
            style: AppStyles.keyStyle(),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

enum ProfileState {
  PROFILE,
  FAQ,
  PRIVACYPOLICY,
  TERMSCONDITION,
  TELLAFRIEND,
  RATEUS,
  YOURSUGGESTION,
  CONTACTUS,
  LOGOUT,
}
