import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Choose Item
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class ChooseItem extends StatefulWidget {
  var category;

  ChooseItem({this.category});

  @override
  _ChooseItemState createState() => _ChooseItemState(category: this.category);
}

class _ChooseItemState extends State<ChooseItem> {
  var category;

  _ChooseItemState({this.category});

  @override
  Widget build(BuildContext context) {
    print(globals.orderList);
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
          itemCount: category["choices"].length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: CheckboxListTile(
                title: Text(category["choices"][index]["name"],
                    style: TextStyle(fontWeight: FontWeight.bold)),
                value: category["choices"][index]["selected"],
                onChanged: (val) {
                  setState(() {
                category["choices"][index]["selected"] = val;
                    if ((category["choices"][index]["selected"]) &&
                    (!globals.orderList.contains(category["choices"][index]["name"]))) {
                      globals.orderList.add(category["choices"][index]["name"]);
                      print(globals.orderList);
                    } else if (!category["choices"][index]["selected"]) {
                        globals.orderList.remove(category["choices"][index]["name"]);
                        print(globals.orderList);
                        }
                  });
                },
              ),
            );
          }),
    );
  }
}
