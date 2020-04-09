import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// BreadPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class BreadPage extends StatelessWidget {
    const BreadPage({ Key key }) : super(key: key);
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
      body: getBreadList(context),
    );
    }
  }
  // Makes list of buttons for BreadPage
  Widget getBreadList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // White Bread
      ListTile(
        title: Text("White Bread"),
        onTap: () {},
      ),
      // Wheat Bread
      ListTile(
        title: Text("Wheat Bread"),
        onTap: () {},
      ),
      // Multigrain Bread
      ListTile(
        title: Text("Multigrain Bread"),
        onTap: () {},
      ),
      // White Wrap
      ListTile(
        title: Text("White Wrap"),
        onTap: () {},
      ),
      // Whole Wheat Wrap
      ListTile(
        title: Text("Whole Wheat Wrap"),
        onTap: () {},
      ),
      // Spinach Wrap
      ListTile(
        title: Text("Spinach Wrap"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}