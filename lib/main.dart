import 'package:crago/constants/strings.dart';
import 'package:crago/providers/user_provider.dart';
import 'package:crago/ui/account_ui/login_page.dart';
import 'package:crago/ui/home_page.dart';
import 'package:crago/ui/homepage.dart';
import 'package:crago/ui/profile_page.dart';
import 'package:crago/ui/splash_page.dart';
import 'package:crago/utils/create_material_color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: createMaterialColor(Color(0xff6029de)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: <String, WidgetBuilder>{
          SPLASH_PAGE: (context) => SplashPage(),
          LOGIN_PAGE: (context) => LoginPage(),
          HOME_PAGE: (context) => HomePage(),
          PROFILE_PAGE: (context) => ProfilePage(),
          HISTORY_PAGE: (context) => ProfilePage(),
          ADD_REQUEST_PAGE: (context) => ProfilePage(),
        },
        home: SplashPage(),
      ),
    );
  }
}
