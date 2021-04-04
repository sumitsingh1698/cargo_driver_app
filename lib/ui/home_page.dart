import 'package:crago/constants/strings.dart';
import 'package:crago/ui/add_request_page.dart';
import 'package:crago/ui/history_page.dart';
import 'package:crago/ui/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PersistentTabController _controller;
  // bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 1);
    // _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: [
          HistoryPage(),
          AddRequestPage(),
          ProfilePage(_controller),
        ],
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        // margin: EdgeInsets.all(10.0),
        popActionScreens: PopActionScreensType.once,
        bottomScreenMargin: 0.0,

        // selectedTabScreenContext: (context) {
        //   testContext = context;
        // },
        // hideNavigationBar: _hideNavBar,

        decoration: NavBarDecoration(
            colorBehindNavBar: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(0.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style15, // Choose the nav bar style with this property
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: HISTORY_PAGE,
        //   routes: {
        //     HISTORY_PAGE: (context) => HistoryPage(),
        //     ADD_REQUEST_PAGE: (context) => AddRequestPage(),
        //     PROFILE_PAGE: (context) => ProfilePage(),
        //   },
        // ),
        icon: Icon(Icons.history),
        title: HISTORY,
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: (ADD_REQUEST),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: ADD_REQUEST_PAGE,
        //   routes: {
        //     HISTORY_PAGE: (context) => HistoryPage(),
        //     ADD_REQUEST_PAGE: (context) => AddRequestPage(),
        //     PROFILE_PAGE: (context) => ProfilePage(),
        //   },
        // ),
        // activeColor: Colors.blueAccent,

        // inactiveColor: Colors.grey,
        // activeColorAlternatePrimary: Colors.white,
        activeColorSecondary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_circle_outlined),
        title: (PROFILE),

        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
        // activeColor: Colors.teal,
        // inactiveColor: Colors.grey,
      ),
    ];
  }
}
