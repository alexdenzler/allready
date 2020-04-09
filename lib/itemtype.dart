import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'breadpage.dart';
import 'meatpage.dart';
import 'cheesepage.dart';
import 'toppingspage.dart';
import 'saucepage.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ItemTypePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class ItemTypePage extends StatelessWidget {
  const ItemTypePage({ Key key }) : super(key: key);
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: getItemTypeList(context),
    );
  }
}
// Makes list of buttons for ItemTypePage
Widget getItemTypeList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // Bread Option
      ListTile(
        title: Text("Bread"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BreadPage())
          );
        },
      ),
      // Meat Option
      ListTile(
        title: Text("Meat"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MeatPage())
          );
        },
      ),
      ListTile(
        title: Text("Cheese"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheesePage())
          );
        },
      ),
      ListTile(
        title: Text("Toppings"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ToppingsPage())
          );
        },
      ),
      ListTile(
        title: Text("Sauce"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SaucePage())
          );
        },
      ),
    ],
  );
  return listView;
}