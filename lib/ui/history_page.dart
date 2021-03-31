import 'package:crago/constants/colors.dart';
import 'package:crago/constants/decorations.dart';
import 'package:crago/constants/strings.dart';
import 'package:crago/constants/styles.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: Center(
                  child: Text(
                    HISTORY,
                    style: AppStyles.titleStyle(),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                  itemBuilder: (context, idx) {
                    return getHistoryTab(idx);
                  },
                  itemCount: 10,
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
      ),
    );
  }

  Widget getHistoryTab(int idx) {
    return Container(
        margin: EdgeInsets.all(3),
        padding: EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 15,
        ),
        decoration: AppDecoration.orderBoxDecoration(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Order Id",
                    style: AppStyles.keyStyle(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 4,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "#${idx + 1}",
                            style: AppStyles.valueStyle(),
                          ),
                          Text(
                            "Audi A8",
                            style: AppStyles.valueStyle(),
                          )
                        ])),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                    flex: 4,
                    child: Text(
                      "12-Aug-2020 17:58",
                      style: AppStyles.valueStyle(),
                    ))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                    flex: 4,
                    child: Text(
                      "14 avenue xysx",
                      style: AppStyles.valueStyle(),
                    ))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      "Status",
                      style: AppStyles.keyStyle(),
                    )),
                Expanded(
                    flex: 4,
                    child: Text(
                      "Task Completed",
                      style: AppStyles.valueStyle(color: APP_GREEN),
                    )),
              ],
            )
          ],
        ));
  }
}
