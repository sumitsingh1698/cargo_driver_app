import 'package:crago/constants/colors.dart';
import 'package:crago/constants/decorations.dart';
import 'package:crago/constants/strings.dart';
import 'package:crago/constants/styles.dart';
import 'package:crago/providers/user_provider.dart';
import 'package:crago/ui/homepage.dart';
import 'package:crago/utils/MyInputField.dart';
import 'package:crago/utils/common_utils.dart';
import 'package:crago/utils/myButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool phoneUi = true;
  bool isLoading = false;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    if (userProvider.verificationId != null && phoneUi == false) {
      setState(() {
        phoneUi = false;
        controller.text = '';
      });
    }
    return Scaffold(
      body: Container(
        decoration: AppDecoration.imageBackgroundDecoration(),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: APP_WHITE,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      APP_TITLE,
                      style: AppStyles.companyTitleStyle(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),

                decoration: AppDecoration.backgroundLoginPage(),
                // color: APP_WHITE,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LOGIN,
                      style: AppStyles.headTitleStyle(),
                    ),
                    Expanded(
                      child: phoneUi ? uiForPhoneNo() : uiForOTP(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget uiForPhoneNo() {
    return Column(
      children: [
        MyInputField(
          title: ENTER_MOBILE_NUMBER,
          controller: controller,
          keyboardType: TextInputType.phone,
          // maxLength: 10,
        ),
        SizedBox(
          height: 20,
        ),
        MyButton(
          title: CONTINUE,
          onPressed: sendOtp,
        )
      ],
    );
  }

  Widget uiForOTP() {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              MyInputField(
                title: ENTER_OTP,
                controller: controller,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                title: LOGIN,
                onPressed: login,
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  setState(() {
                    phoneUi = true;
                    controller.text = '';
                  });
                },
              )),
        ],
      ),
    );
  }

  bool phoneNoValidate(String val) {
    if (val == '') {
      CommonUtils.showToast("Enter Phone No.");
      return false;
    } else if (val.length != 10) {
      CommonUtils.showToast("Must be 10 digit");
      return false;
    }
    return true;
  }

  bool otpValidate(String val) {
    if (val == '') {
      CommonUtils.showToast("Enter OTP");
      return false;
    } else if (val.length != 6) {
      CommonUtils.showToast("Must be 6 digit");
      return false;
    }
    return true;
  }

  Future sendOtp() async {
    if (!phoneNoValidate(controller.text)) {
      return false;
    }
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await userProvider.sendOTP(controller.text);
    phoneUi = false;
  }

  Future login() async {
    if (!otpValidate(controller.text)) {
      return false;
    }
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await userProvider.verifyOTP(controller.text).then((res) {
      if (res == true)
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => Homepage()), (_) => false);
    });
  }
}
