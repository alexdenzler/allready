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
        title: Text("Bacon"),
        onTap: () {},
      ),
      // Ham
      ListTile(
        title: Text("Ham"),
        onTap: () {},
      ),
      // Roast Beef
      ListTile(
        title: Text("Roast Beef"),
        onTap: () {},
      ),
      // Salami
      ListTile(
        title: Text("Salami"),
        onTap: () {},
      ),
      // Turkey
      ListTile(
        title: Text("Turkey"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}