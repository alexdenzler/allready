import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// BreadPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class BreadPage extends StatelessWidget{
    const BreadPage({ Key key }) : super(key: key);
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
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "White Bread",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Wheat Bread
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),        
        title: Text(
          "Wheat Bread",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {},
      ),
      // Multigrain Bread
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Multigrain Bread",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {},
      ),
      // White Wrap
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "White Wrap",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Whole Wheat Wrap
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Whole Wheat Wrap",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Spinach Wrap
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Spinach Wrap",
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