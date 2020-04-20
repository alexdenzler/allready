import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as globals;


// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ToppingsPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class ToppingsPage extends StatefulWidget{
    const ToppingsPage({ Key key }) : super(key: key);
    
    @override
    _ToppingsPageState createState() => _ToppingsPageState();
  }

  class _ToppingsPageState extends State<ToppingsPage> {
    //list of bool values of whether each item is globals.toppingsList or not

    
    @override
  Widget build(BuildContext context) {
    final List<String> toppings = <String>["Cucumber","Green Papper","Lettuce","Onion","Spinach","Tomato"];
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text("Allready",
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
              itemCount: toppings.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: CheckboxListTile(
                    title: Text(toppings[index],
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                    )),
                    value: globals.toppingsList[index],
                    onChanged: (val) {
                      setState(() {
                        globals.toppingsList[index] = val;
                        if ((globals.toppingsList[index]) && (!globals.orderList.contains(toppings[index]))){
                            globals.orderList.add(toppings[index]);
                            print(globals.orderList);
                        }
                        else if (!globals.toppingsList[index]){
                          globals.orderList.remove(toppings[index]);
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
        
