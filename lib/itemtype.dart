import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'breadpage.dart';
import 'meatpage.dart';
import 'cheesepage.dart';
import 'toppingspage.dart';
import 'saucepage.dart';
import 'ordersummary.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ItemTypePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class ItemTypePage extends StatelessWidget {
  const ItemTypePage({ Key key }) : super(key: key);
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
      body: getItemTypeList(context),
    );
  }
} 
// Makes list of buttons for ItemTypePage
Widget getItemTypeList(BuildContext context) {
  final List<String> itemTypes = <String>['Bread', 'Meat', 'Cheese', 'Toppings', 'Sauce'];
  final List<dynamic> pages = <dynamic>[BreadPage(), MeatPage(), CheesePage(), ToppingsPage(), SaucePage()];
  
  var listView = ListView.builder(
      itemCount: itemTypes.length,
      itemBuilder: (BuildContext context, int index){
        return new Container(
          child: ListTile(
            trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
            title: Text(itemTypes[index],
              style: TextStyle(
                fontWeight: FontWeight.bold
              )
            ),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => pages[index])
            );
          },
          )
        );
      }
   );
  return listView;
}

