import 'dart:js';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      // Creates a container with Atrium Picture that you can click on
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        margin: EdgeInsets.all(10.0),
        color: Colors.blueGrey[300],
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemTypePage())
              );
          },
          child: Image.network('https://themacweekly.com/wp-content/uploads/2018/01/Atrium_news_Rait18-1024x613.jpg'),
          ),
      ),
      // Creates a button in the middle of the screen that says "Click Here to Order"
        // body: Center(
        //   child: RaisedButton(
        //     onPressed: () {
        //       print('Hello World.');
        //     },
        //     child: Text('Click Here To Order'),
        //     ),
        //     )
    );
  }
}

class ItemTypePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AllReady"),
      ),
      body: getListView(),
    );
  }
}

Widget getListView() {
  var listView = ListView(
    children: <Widget> [

      ListTile(
        title: Text("Bread"),
        // onTap: () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => BreadPage())
        //   );
        // },
      ),

      ListTile(
        title: Text("Meat"),
      ),
      ListTile(
        title: Text("Cheese"),
      ),
      ListTile(
        title: Text("Toppings"),
      ),
      ListTile(
        title: Text("Sauce"),
      ),
    ],
  );
  return listView;
}

  class BreadPage extends StatelessWidget {
    @override 
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("AllReady"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go Back to Home Screen."),
          ),
        ),
      );
    }
  }

// Generic Code for a new page
  // class ItemTypePage extends StatelessWidget {
  //   @override 
  //   Widget build(BuildContext context) {
  //     return Scaffold(
  //       appBar: AppBar(
  //         title: Text("AllReady"),
  //       ),
  //       body: Center(
  //         child: RaisedButton(
  //           onPressed: () {
  //             Navigator.pop(context);
  //           },
  //           child: Text("Go Back to Home Screen."),
  //         ),
  //       ),
  //     );
  //   }
  // }