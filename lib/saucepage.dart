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
        title: Text("Chipotle Sauce"),
        onTap: () {},
      ),
      // Honey Mustard
      ListTile(
        title: Text("Honey Mustard"),
        onTap: () {},
      ),
      // Mayonnaise
      ListTile(
        title: Text("Mayonnaise"),
        onTap: () {},
      ),
      // Yellow Mustard
      ListTile(
        title: Text("Yellow Mustard"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}