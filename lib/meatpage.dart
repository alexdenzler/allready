import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// MeatPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class MeatPage extends StatefulWidget{
    const MeatPage({ Key key }) : super(key: key);
    
    @override
    _MeatPageState createState() => _MeatPageState();
  }

  class _MeatPageState extends State<MeatPage> {
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
    final List<String> meats = <String>["meat 1","meat 2"];
    
    var listView = ListView.builder(
      itemCount: meats.length,
      itemBuilder: (BuildContext context, int index){
        return new Container(
          child: ListTile(
            trailing: Icon(Icons.check_box_outline_blank),
            title: Text(meats[index],
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