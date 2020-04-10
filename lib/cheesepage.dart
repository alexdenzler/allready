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
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "American",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Cheddar
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Cheddar",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Pepperjack
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Pepperjack",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Provolone
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Provolone",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Swiss
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Swiss",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
    ],
  );
  return listView;
}