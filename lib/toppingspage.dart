import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ToppingsPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class ToppingsPage extends StatefulWidget{
    const ToppingsPage({ Key key }) : super(key: key);
    
    @override
    _ToppingsPageState createState() => _ToppingsPageState();
  }

  class _ToppingsPageState extends State<ToppingsPage> {
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
        body: getToppingsList(context),
      );
    }
  }
  // Makes list of buttons for Toppings Page
  Widget getToppingsList(BuildContext context){
    final List<String> toppings = <String>["topping 1","topping 2"];
    
    var listView = ListView.builder(
      itemCount: toppings.length,
      itemBuilder: (BuildContext context, int index){
        return new Container(
          child: ListTile(
            trailing: Icon(Icons.check_box_outline_blank),
            title: Text(toppings[index],
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