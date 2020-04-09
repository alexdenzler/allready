import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
    );
    }
  }