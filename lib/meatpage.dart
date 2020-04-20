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
    List<bool> checked = <bool>[false,false];
    @override 
    Widget build(BuildContext context) {
      final List<String> meats = <String>["Turkey","Ham"];
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
                    value: checked[index],
                    onChanged: (val) {
                      setState(() {
                        checked[index] = val;
                        if ((checked[index]) && (!globals.theList.contains(meats[index]))){
                            globals.theList.add(meats[index]);
                            print(globals.theList);
                        }
                        else if (!checked[index]){
                          globals.theList.remove(meats[index]);
                          print(globals.theList);
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
 