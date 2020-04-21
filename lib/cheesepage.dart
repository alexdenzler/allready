import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as globals;
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CheesePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class CheesePage extends StatefulWidget{
    const CheesePage({ Key key }) : super(key: key);
    
    @override
    _CheesePageState createState() => _CheesePageState();
  }
  
  class _CheesePageState extends State<CheesePage> {
    //list of bool values of whether each item is globals.cheeseList or not
   
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
              itemCount: globals.cheeses.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: CheckboxListTile(
                    title: Text(globals.cheeses[index],
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                    )),
                    value: globals.cheeseList[index],
                    onChanged: (val) {
                      setState(() {
                        globals.cheeseList[index] = val;
                        if ((globals.cheeseList[index]) && (!globals.orderList.contains(globals.cheeses[index]))){
                            globals.orderList.add(globals.cheeses[index]);
                            print(globals.orderList);
                        }
                        else if (!globals.cheeseList[index]){
                          globals.orderList.remove(globals.cheeses[index]);
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