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
      final List<String> meats = <String>["Bacon","Ham","Roast Beef","Salami","Turkey"];
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
              itemCount: meats.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: CheckboxListTile(
                    title: Text(meats[index],
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                    )),
                    value: globals.meatList[index],
                    onChanged: (val) {
                      setState(() {
                        globals.meatList[index] = val;
                        if ((globals.meatList[index]) && (!globals.orderList.contains(meats[index]))){
                            globals.orderList.add(meats[index]);
                            print(globals.orderList);
                        }
                        else if (!globals.meatList[index]){
                          globals.orderList.remove(meats[index]);
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
 