import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// SaucePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class SaucePage extends StatelessWidget {
    const SaucePage({ Key key }) : super(key: key);
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
        body: getSauceList(context,)
      );
    }
  }
  // Makes list of buttons for Sauce Page
  Widget getSauceList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // Chipotle Sauce
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Chipotle Sauce",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Honey Mustard
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Honey Mustard",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Mayonnaise
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Mayonnaise",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Yellow Mustard
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Yellow Mustard",
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