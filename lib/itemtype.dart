import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'chooseitem.dart';
import 'ordersummary.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ItemTypePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class ItemTypePage extends StatelessWidget {
  const ItemTypePage({ Key key }) : super(key: key);
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
      body: getItemTypeList(context),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Checkout'),
            ),
        ]
      ),
    );
  }
} 
// Makes list of buttons for ItemTypePage
Widget getItemTypeList(BuildContext context) {
  
  var listView = ListView.builder(
      itemCount: globals.categories.length,
      itemBuilder: (BuildContext context, int index){
        return new Container(
          child: ListTile(
            trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
            title: Text(globals.categories[index]["name"],
              style: TextStyle(
                fontWeight: FontWeight.bold
              )
            ),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => ChooseItem(category: globals.categories[index]))
            );
          },
          )
        );
      }
   );
  return listView;
}

