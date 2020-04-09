import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ToppingsPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class ToppingsPage extends StatelessWidget {
    const ToppingsPage({ Key key }) : super(key: key);
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
        body: getToppingsList(context),
      );
    }
  }
  // Makes list of buttons for Toppings Page
  Widget getToppingsList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // Cucumber
      ListTile(
        title: Text("Cucumber"),
        onTap: () {},
      ),
      // Green Pepper
      ListTile(
        title: Text("Green Pepper"),
        onTap: () {},
      ),
      // Lettuce
      ListTile(
        title: Text("Lettuce"),
        onTap: () {},
      ),
      // Onion
      ListTile(
        title: Text("Onion"),
        onTap: () {},
      ),
      // Spinach
      ListTile(
        title: Text("Spinach"),
        onTap: () {},
      ),
      // Tomato
      ListTile(
        title: Text("Tomato"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}
