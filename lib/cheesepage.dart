import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CheesePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class CheesePage extends StatefulWidget{
    const CheesePage({ Key key }) : super(key: key);
    
    @override
    _CheesePageState createState() => _CheesePageState();
  }
  
  class _CheesePageState extends State<CheesePage> {
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
        body: getCheeseList(context),
      );
    }
  }
  // Makes list of buttons for Cheese Page
  Widget getCheeseList(BuildContext context) {
    final List<String> cheeses = <String>["cheese 1","cheese 2"];
    
    var listView = ListView.builder(
      itemCount: cheeses.length,
      itemBuilder: (BuildContext context, int index){
        return new Container(
          child: ListTile(
            trailing: Icon(Icons.check_box_outline_blank),
            title: Text(cheeses[index],
              style: TextStyle(
                fontWeight: FontWeight.bold
              )
            ),
          )
        );
      }
   );
  return listView;
}