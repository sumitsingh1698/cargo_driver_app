import 'package:crago/constants/colors.dart';
import 'package:crago/constants/strings.dart';
import 'package:crago/providers/user_provider.dart';
import 'package:crago/ui/account_ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        elevation: 4.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Icon(
                    Icons.history,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("History"),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(''),
                SizedBox(
                  height: 10,
                ),
                new Text('Request'),
                // new Text(''),
              ],
            )),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Profile"),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (val) {
      //     setState(() {
      //       // currentIndex = val;
      //       // print("clicked");
      //     });
      //   },
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: 0,
      //   // backgroundColor: APP_GREY,
      //   // unselectedItemColor: APP_BLUE,
      //   // selectedItemColor: APP_DARK_BLUE,
      //   iconSize: 20,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.home),
      //       label: "Home",
      //     ),
      //      BB
      //     // BottomNavigationBarItem(
      //     //   icon: FaIcon(FontAwesomeIcons.bars),
      //     //   label: "list1",
      //     // ),
      //     // BottomNavigationBarItem(
      //     //   icon: FaIcon(FontAwesomeIcons.bell),
      //     //   label: "noti",
      //     // ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.user),
      //       label: "ACCOUNT",
      //     ),
      //   ],
      // ),
      body: Container(
        color: APP_BACKGROUND_COLOR,
        child: Column(
          children: [
            // ADDS BLOCK
            Container(
              height: 87,
              child: Text(ADS_SPACE),
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: APP_WHITE,
              child: Center(
                child: Text(ADD_REQUEST),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                itemBuilder: (context, idx) {
                  return getOrderTab(idx);
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget logout() {
    return RaisedButton(
      child: Text("Logout"),
      onPressed: () {
        UserProvider userProvider =
            Provider.of<UserProvider>(context, listen: false);
        userProvider.logout().then((_) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              (_) => false);
        });
      },
    );
  }

  Widget getOrderTab(int idx) {
    return Container(
      margin: EdgeInsets.all(3),
      child: ListTile(
        tileColor: APP_WHITE,
        title: Text("Order ${idx + 1}"),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Table(
              children: [
                TableRow(children: [
                  Text("Requested Id  "),
                  Text("4333434"),
                  Container(),
                ]),
                TableRow(children: [
                  Text("Date Requested  "),
                  Text("14/09/2020"),
                  Container(),
                ])
              ],
            )
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios_sharp, color: APP_PURPLE),
      ),
    );
  }
}
