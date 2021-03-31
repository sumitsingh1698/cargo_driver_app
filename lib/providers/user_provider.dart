import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import 'package:firebase_auth/firebase_auth.dart';

class UserProvider extends ChangeNotifier {
  FirebaseAuth auth;

  UserProvider() {
    Firebase.initializeApp();
    auth = FirebaseAuth.instance;
    notifyListeners();
  }

  String _verificationId;

  String get verificationId => _verificationId;

  set verificationId(String val) {
    verificationId = _verificationId;
    notifyListeners();
  }

  Future sendOTP(String phone) async {
    print(phone);
    auth.signOut();
    _verificationId = null;
    try {
      print("here");
      await auth.verifyPhoneNumber(
        timeout: Duration(seconds: 20),
        phoneNumber: '+91 $phone',
        verificationCompleted: (PhoneAuthCredential credential) {
          print("Verification Completed");
        },
        verificationFailed: (FirebaseAuthException e) {
          print("Verification Failed $e");
        },
        codeSent: (String vID, int resendToken) {
          print("$verificationId");
          _verificationId = vID;
          notifyListeners();

          print("Verification Code Sent");
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print("Verification TimeOut");
        },
      );
    } catch (e) {
      log(e.toString());
    }
  }

  Future<bool> verifyOTP(String otp) async {
    print(_verificationId);
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: _verificationId, smsCode: otp);
    try {
      return await auth.signInWithCredential(phoneAuthCredential).then((_) {
        return true;
      });
    } catch (e) {
      return false;
    }
  }

  Future<bool> logout() async {
    await auth.signOut();
    return true;
  }

  bool isUser() {
    if (auth.currentUser == null) {
      return false;
    }
    print(auth.currentUser);
    return true;
  }
}
