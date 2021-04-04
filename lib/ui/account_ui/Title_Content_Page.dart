import 'package:crago/constants/colors.dart';
import 'package:crago/constants/decorations.dart';
import 'package:crago/constants/styles.dart';
import 'package:crago/ui/profile_page.dart';
import 'package:crago/utils/MyInputField.dart';
import 'package:flutter/material.dart';

class TitleContentPage extends StatelessWidget {
  final String title;
  final ProfileState profileState;
  TitleContentPage(this.title, this.profileState);
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
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  Text(
                    "$title",
                    style: AppStyles.titleStyle(),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                children: [
                  if (profileState == ProfileState.FAQ) fqaPageUI(),
                  if (profileState == ProfileState.PRIVACYPOLICY)
                    privacyPolicyPageUI(),
                  if (profileState == ProfileState.TERMSCONDITION)
                    termConditionPageUI(),
                  if (profileState == ProfileState.RATEUS) rateUsPageUI(),
                  if (profileState == ProfileState.YOURSUGGESTION)
                    yourSuggestionPageUI(),
                  if (profileState == ProfileState.CONTACTUS) contactUsPageUI(),
                  // if(profileState == ProfileState.LOGOUT),
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

  Widget fqaPageUI() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: AppDecoration.orderBoxDecoration(),
      // height: 200,
      // color: Colors.orange,
      child: Text(
        "These excellant intentions ? \nwere strengthed when he enterd the Father Superior's\n \ndiniing-room, though ?\n stricttly speakin, it was not a dining-room \n\nfor the Father Superior had ?\nonly two rooms alltogether; they were, however \n\nmuch larger and ? \nmore comfortable than Father Zossima's. But",
        style: AppStyles.valueStyle(),
      ),
    );
  }

  Widget privacyPolicyPageUI() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: AppDecoration.orderBoxDecoration(),
      // height: 200,
      // color: Colors.orange,
      child: Text(
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \nLorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. \nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie",
        style: AppStyles.valueStyle(),
      ),
    );
  }

  Widget termConditionPageUI() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: AppDecoration.orderBoxDecoration(),
      // height: 200,
      // color: Colors.orange,
      child: Text(
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \nLorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. \nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie",
        style: AppStyles.titleStyle(),
      ),
    );
  }

  Widget tellAFriendPageUI() {
    return Container(
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Get in touch if you need help"),
        ],
      ),
      color: Colors.black,
    );
  }

  Widget rateUsPageUI() {
    return Container(
      height: 200,
      color: Colors.blue,
    );
  }

  Widget yourSuggestionPageUI() {
    return Container(
      // color: Colors.yellow,
      child: SingleChildScrollView(
          child: Column(
        children: [
          MyInputField(
            title: "What is the subject of the suggestions ?",
          ),
          SizedBox(
            height: 10,
          ),
          MyInputField(
            title: "\nWhat is your suggestions ?",
            minLine: 20,
          ),
        ],
      )),
    );
  }

  Widget contactUsPageUI() {
    return Container(
      // height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get in touch if you need help",
            style: AppStyles.headTitleStyle(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Qatar - Doha 10\n Reda Street \nE10 O GD",
            style: AppStyles.valueStyle(),
          ),
          Text(
            "Get Directions",
            style: AppStyles.linkTextStyle(),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Cargo@hotmail.com \n+5644887788",
            style: AppStyles.keyStyle(),
          )
        ],
      ),
      // color: Colors.deepPurple,
    );
  }
}

// These excellant intentions ? \nwere strengthed when he enterd the Father Superior's\n \ndiniing-room, though ?\n stricttly speakin, it was not a dining-room \n\nfor the Father Superior had ?\nonly two rooms alltogether; they were, however \n\nmuch larger and ? \nmore comfortable than Father Zossima's. But
