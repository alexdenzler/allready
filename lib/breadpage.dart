import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// BreadPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class BreadPage extends StatefulWidget {
  var category;

  // const BreadPage({ Key key }) : super(key: key);

  BreadPage({this.category});

  @override
  _BreadPageState createState() => _BreadPageState(category: this.category);
}

class _BreadPageState extends State<BreadPage> {
  var category;

  _BreadPageState({this.category});

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
                //     globals.breadList[index] = val;
                //     if ((globals.breadList[index]) &&
                //         (!globals.orderList.contains(globals.breads[index]))) {
                //       globals.orderList.add(globals.breads[index]);
                //       print(globals.orderList);
                //     } else if (!globals.breadList[index]) {
                //       globals.orderList.remove(globals.breads[index]);
                //       print(globals.orderList);
                //     }
                  });
                },
              ),
            );
          }),
    );
  }
}
