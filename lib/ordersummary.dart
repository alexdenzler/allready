import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Order Summary Page
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class OrderSumPage extends StatelessWidget {
    const OrderSumPage({ Key key }) : super(key: key);
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
      //body: (put order summary here using database)
      body: RaisedButton(
        child: const Text('PlaceHolder Button that takes you back to HomePage (will eventually display order on this page)',
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