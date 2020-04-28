import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Order Summary Page
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class OrderSumPage extends StatelessWidget {
    const OrderSumPage({ Key key }) : super(key: key);
    @override 
    Widget build(BuildContext context) {
      // String orderString = global.theList.toString();
      // print(orderString);
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
      //body: (put order summary here using database)
      body: RaisedButton(
        child: const Text("Steve",
        style: TextStyle(fontSize: 20)),
        color: Colors.red[600],
        textColor: Colors.white,
        elevation: 5,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage())
          );
        },
      ),
    );
    }
  }