import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CheesePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class CheesePage extends StatelessWidget {
    const CheesePage({ Key key }) : super(key: key); 
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
        body: getCheeseList(context),
      );
    }
  }
  // Makes list of buttons for Cheese Page
  Widget getCheeseList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // American
      ListTile(
        title: Text("American"),
        onTap: () {},
      ),
      // Cheddar
      ListTile(
        title: Text("Cheddar"),
        onTap: () {},
      ),
      // Pepperjack
      ListTile(
        title: Text("Pepperjack"),
        onTap: () {},
      ),
      // Provolone
      ListTile(
        title: Text("Provolone"),
        onTap: () {},
      ),
      // Swiss
      ListTile(
        title: Text("Swiss"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}