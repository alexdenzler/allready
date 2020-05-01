import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Order Summary Page
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class OrderSumPage extends StatefulWidget {
  var pages;

  OrderSumPage({this.pages});

  @override
  _OrderSumState createState() => _OrderSumState(pages: this.pages);
}

class _OrderSumState extends State<OrderSumPage> {
  var pages;

  _OrderSumState({this.pages});

  @override
  Widget build(BuildContext context) {
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
      body: getOrderList(context),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        widthFactor: 40,
        child: FlatButton(
          color: Colors.red[600],
          textColor: Colors.white,
          onPressed: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => globals.bottomNavPages[0]));
              globals.orderList = [];
              for(var i in globals.categories){
                for (var j in i["choices"]){
                  if (j["selected"] == true){
                    j["selected"] = false;
                  }
                }   
              }
            });
          },
          child: Text('Restart Order',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        ),
      ),
    );
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
