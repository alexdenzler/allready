import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// BreadPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class BreadPage extends StatefulWidget{
    const BreadPage({ Key key }) : super(key: key);

    @override
    _BreadPageState createState() => _BreadPageState();
    }

  class _BreadPageState extends State<BreadPage>{

    @override 
    Widget build(BuildContext context) {
      print(globals.orderList);
      final List<String> breads = <String>["White Bread","Wheat"];
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
      body: ListView.builder(
        itemCount: breads.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
        child: CheckboxListTile(
        title: Text(breads[index],
        style: TextStyle(
        fontWeight: FontWeight.bold
            )),
              value: globals.breadList[index],
              onChanged: (val) {
              setState(() {
                globals.breadList[index] = val;
                if ((globals.breadList[index]) && (!globals.orderList.contains(breads[index]))){
                    globals.orderList.add(breads[index]);
                    print(globals.orderList);
                }
                else if (!globals.breadList[index]){
                  globals.orderList.remove(breads[index]);
                  print(globals.orderList);
                }
                    });
                  },
                ),
              );
            }
          ),
      );
    }
  }
 