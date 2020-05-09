import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'chooseitem.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ItemTypePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class ItemTypePage extends StatefulWidget {
  final pages;

  ItemTypePage({this.pages});

  @override
  _ItemTypeState createState() => _ItemTypeState(pages: this.pages);
}

class _ItemTypeState extends State<ItemTypePage> {
  var pages;
  int _index = 0;

  _ItemTypeState({this.pages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        leading: new Container(),
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
      body: getItemTypeList(context),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: Text('Home', style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            title: Text('Checkout', style: TextStyle(color: Colors.white)),
          ),
        ],
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => globals.bottomNavPages[index]));  // gives bottom nav bar a destination based on data passed in
          });
        },
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

// Makes list of buttons for ItemTypePage
Widget getItemTypeList(BuildContext context) {
  var listView = ListView.builder(
      itemCount: globals.categories.length,
      itemBuilder: (BuildContext context, int index) {
        return new Container(
            child: ListTile(
          trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
          title: Text(globals.categories[index]["name"],  // builds list based on data passed in
              style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ChooseItem(category: globals.categories[index]))); // routes to page based on data passed in
          },
        ));
      });
  return listView;
}
