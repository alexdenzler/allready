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
  List<bool> checked = <bool>[false,false,false,false,false,false];
  

    @override 
    Widget build(BuildContext context) {
      
      //print(globals.theList);
      final List<String> breads = <String>["White Bread","Wheat Bread","Multigrain Bread","White Wrap","Wheat Wrap","Spinach Wrap"];
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
              value: checked[index],
              onChanged: (val) {
              setState(() {
                checked[index] = val;
                if ((checked[index]) && (!globals.theList.contains(breads[index]))){
                    globals.theList.add(breads[index]);
                    print(globals.theList);
                }
                else if (!checked[index]){
                  globals.theList.remove(breads[index]);
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
 