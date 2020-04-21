import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as globals;
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
        body: ListView.builder(
              itemCount: globals.meats.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: CheckboxListTile(
                    title: Text(globals.meats[index],
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                    )),
                    value: globals.meatList[index],
                    onChanged: (val) {
                      setState(() {
                        globals.meatList[index] = val;
                        if ((globals.meatList[index]) && (!globals.orderList.contains(globals.meats[index]))){
                            globals.orderList.add(globals.meats[index]);
                            print(globals.orderList);
                        }
                        else if (!globals.meatList[index]){
                          globals.orderList.remove(globals.meats[index]);
                          print(globals.orderList);
                        }
                      });
                    },
                  ),
                );
              }
            )
      );
    }
  }
 