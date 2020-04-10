import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// MeatPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class MeatPage extends StatelessWidget {
    const MeatPage({ Key key }) : super(key: key);
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
        body: getMeatList(context),
      );
    }
  }
  // Makes list of buttons for MeatPage
  Widget getMeatList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // Bacon
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Bacon",
        style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Ham
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Ham",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Roast Beef
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Roast Beef",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Salami
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Salami",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),  
        ),
        onTap: () {},
      ),
      // Turkey
      ListTile(
        trailing: Icon(Icons.check_box_outline_blank),
        title: Text(
          "Turkey",
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