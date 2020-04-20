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
    //list of bool values of whether each item is checked or not
    List<bool> checked = <bool>[false,false];
    final List<String> cheeses = <String>["Swiss","American"];
    List<String> breadOrder = [];
   
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
              itemCount: cheeses.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: CheckboxListTile(
                    title: Text(cheeses[index],
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                    )),
                    value: checked[index],
                    onChanged: (val) {
                      setState(() {
                        checked[index] = val;
                        if ((checked[index]) && (!globals.theList.contains(cheeses[index]))){
                            globals.theList.add(cheeses[index]);
                            print(globals.theList);
                        }
                        else if (!checked[index]){
                          globals.theList.remove(cheeses[index]);
                          print(globals.theList);
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