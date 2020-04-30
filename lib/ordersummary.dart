import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Order Summary Page
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class OrderSumPage extends StatelessWidget {
  const OrderSumPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // String orderString = global.theList.toString();
    // print(orderString);
    return Scaffold(
        backgroundColor: Colors.grey[500],
        appBar: AppBar(
          title: Text(
            'AllReady',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.red[600],
              fontFamily: 'ShadowsIntoLight',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[300],
        ),
        body: getOrderList(context));
  }
}

// Returns order
Widget getOrderList(BuildContext context) {
  var listView = ListView.builder(
      itemCount: globals.orderList.length,
      itemBuilder: (BuildContext context, int index) {
        return new Container(
            child: ListTile(
                title: Text(globals.orderList[index],
                    style: TextStyle(fontWeight: FontWeight.bold))));
      });
  return listView;
}
