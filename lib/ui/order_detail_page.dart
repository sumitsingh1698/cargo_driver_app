import 'package:crago/constants/colors.dart';
import 'package:crago/constants/decorations.dart';
import 'package:crago/constants/strings.dart';
import 'package:crago/constants/styles.dart';
import 'package:crago/utils/myButton.dart';
import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
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

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    color: APP_WHITE,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios)),
                          Text(
                            ADD_REQUEST,
                            style: AppStyles.titleStyle(),
                          ),
                          Container(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: AppDecoration.orderBoxDecoration(),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order One",
                                style: AppStyles.titleStyle(),
                              ),
                              InkWell(
                                child: Icon(Icons.cancel_outlined),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Order ID",
                                style: AppStyles.keyStyle(),
                              ),
                              Text(
                                "786456",
                                style: AppStyles.headTitleStyle(),
                              )
                            ],
                          ),
                        ),
                        orderDetailTab("Customer name", "John John"),
                        orderDetailTab("Location", "14 Avenue xyz"),
                        orderDetailTab("Phone number", "+1 8765786556"),
                        orderDetailTab("Vehicle model", "Audi Q7"),
                        orderDetailTab("Vehicle Number", "FDJ-0922"),
                        orderDetailTab("Pickup Time", "07:30 PM"),
                        orderDetailTab("Pickup Date", "01-02-2021"),
                        orderDetailTab("Order Status", "Jhon Jhon"),
                        orderDetailTab("Cash Collected", "xxxx"),
                        MyButton(onPressed: () {}, title: "Get Direction"),
                        MyButton(onPressed: () {}, title: "Update Order"),
                      ],
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

  Widget getOrderTab(int idx) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 15,
      ),
      decoration: AppDecoration.orderBoxDecoration(),
      child: InkWell(
        onTap: () {},
        child: ListTile(
          tileColor: APP_WHITE,
          title: Text(
            "Order ${idx + 1}",
            style: AppStyles.keyStyle(),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Table(
                defaultColumnWidth: FlexColumnWidth(10.0),
                children: [
                  TableRow(children: [
                    Text(
                      "Requested Id  ",
                      style: AppStyles.keyStyle(),
                    ),
                    Text(
                      "4333434",
                      style: AppStyles.valueStyle(),
                    ),
                    // Container(),
                  ]),
                  TableRow(children: [
                    SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      height: 2,
                    )
                  ]),
                  TableRow(children: [
                    Text(
                      "Date Requested  ",
                      style: AppStyles.keyStyle(),
                    ),
                    Text(
                      "14/09/2020",
                      style: AppStyles.valueStyle(),
                    ),
                    // Container(),
                  ])
                ],
              ),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp, color: APP_PURPLE),
        ),
      ),
    );
  }

  Widget orderDetailTab(String title, String value) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              "$title  ",
              style: AppStyles.keyStyle(),
            ),
          ),
          Expanded(
            child: Text(
              "$value",
              style: AppStyles.valueStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
