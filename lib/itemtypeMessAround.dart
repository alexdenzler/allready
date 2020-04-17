import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'breadpage.dart';
import 'meatpage.dart';
import 'cheesepage.dart';
import 'toppingspage.dart';
import 'saucepage.dart';
import 'ordersummary.dart';

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
    );
  }
} 
// Makes list of buttons for ItemTypePage
Widget getItemTypeList(BuildContext context) {
  // To do: Replace this list with list retrieved from Firebase
  final List<String> itemTypes = <String>['Bread', 'Meat', 'Cheese', 'Toppings', 'Sauce'];
  // To do: Retrieve various collections/documents from Firebase instead of set list
  final List<dynamic> pages = <dynamic>[BreadPage(), MeatPage(), CheesePage(), ToppingsPage(), SaucePage()];
  
  var listView = ListView.builder(
      itemCount: itemTypes.length,
      itemBuilder: (BuildContext context, int index){
        return new Container(
          child: ListTile(
            trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
            title: Text(itemTypes[index],
              style: TextStyle(
                fontWeight: FontWeight.bold
              )
            ),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => pages[index])
            );
          },
          )
        );
      }
   );

    return listView;
  
    // var listView = CustomScrollView(
    //   shrinkWrap: true,
    //   slivers: <Widget>[
    //     SliverPadding(
    //       padding: const EdgeInsets.all(20),
    //       sliver: SliverList(
    //         delegate: SliverChildListDelegate(
    //           <Widget> [
    //             ListView.builder(
    //               padding: const EdgeInsets.all(20),
    //               itemCount: itemTypes.length,
    //               itemBuilder: (BuildContext context, int index) {
    //                 return Container(
    //                   color: Colors.blueGrey[300],
    //                   child: ListTile(
    //                     trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
    //                     title: Text(
    //                       '${itemTypes[index]}',
    //                       style: TextStyle(fontWeight: FontWeight.bold)
    //                     ),
    //                   // onTap: () {
    //                   //   Navigator.push(
    //                   //     context,
    //                   //     MaterialPageRoute(builder: (context) => pageFromListOfPages)
    //                   //   );
    //                   // },
    //                   ),
    //                 );
    //               }
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // children: <Widget> [
    //   // Bread Option
    //   ListTile(
    //     trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
    //     title: Text(
    //       "Bread", 
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     onTap: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => BreadPage())
    //       );
    //     },
    //   ),
    //   // Meat Option
    //   ListTile(
    //     trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
    //     title: Text(
    //       "Meat",
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     onTap: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => MeatPage())
    //       );
    //     },
    //   ),
    //   ListTile(
    //     trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
    //     title: Text(
    //       "Cheese",
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     onTap: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => CheesePage())
    //       );
    //     },
    //   ),
    //   ListTile(
    //     trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
    //     title: Text(
    //       "Toppings",
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //     onTap: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => ToppingsPage())
    //       );
    //     },
    //   ),
    //   ListTile(
    //     trailing: Icon(Icons.arrow_right, color: Colors.red[600], size: 40),
    //     title: Text(
    //       "Sauce",
    //       style: TextStyle(
    //         fontWeight: FontWeight.bold,
    //       ),  
    //     ),
    //     onTap: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => SaucePage())
    //       );
    //     },
    //   ),
    //   SizedBox(height: 250),
    //   FloatingActionButton.extended(
    //     onPressed: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => OrderSumPage())
    //       );
    //     },
    //     backgroundColor: Colors.red,
    //     label: Text(
    //       'View Order Summary', 
    //       style: TextStyle(
    //         fontSize: 20,
    //         color: Colors.white,
    //       )
    //     ),
    //   ),
    // ],
  //);
  //return listView;
}

