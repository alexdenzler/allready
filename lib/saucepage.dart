import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// SaucePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class SaucePage extends StatefulWidget{
    const SaucePage({ Key key }) : super(key: key);
    
    @override
    _SaucePageState createState() => _SaucePageState();
  }

  class _SaucePageState extends State<SaucePage> {
    
    @override 
    Widget build(BuildContext context) {
      final List<String> sauces = <String>["Chipotle Sauce","Honey Mustard","Mayonnaise","Yellow Mustard"];
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
              itemCount: sauces.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: CheckboxListTile(
                    title: Text(sauces[index],
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                    )),
                    value: globals.sauceList[index],
                    onChanged: (val) {
                      setState(() {
                        globals.sauceList[index] = val;
                        if ((globals.sauceList[index]) && (!globals.orderList.contains(sauces[index]))){
                            globals.orderList.add(sauces[index]);
                            print(globals.orderList);
                        }
                        else if (!globals.sauceList[index]){
                          globals.orderList.remove(sauces[index]);
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
