import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Order Summary Page
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class OrderSumPage extends StatefulWidget {
  final pages;

  OrderSumPage({this.pages});

  @override
  _OrderSumState createState() => _OrderSumState(pages: this.pages);
}

class _OrderSumState extends State<OrderSumPage> {
  var pages;

  _OrderSumState({this.pages});

  @override
  Widget build(BuildContext context) {
    final databaseRef = Firestore.instance;
    int increment = 0;
    void sendOrder() async{
      await databaseRef.collection("orderlists").document("$increment").setData({"Order $increment": globals.orderList});
      increment = increment+1;
    }
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
        body: Container(
          child: ListView.builder(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 50),
              itemCount: globals.orderList.length,
              itemBuilder: (BuildContext context, int index) {
                return new Container(
                    child: ListTile(
                        title: Text(globals.orderList[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 0.5))));
              }),
        ),
        bottomNavigationBar: 
        Container(
          child: FlatButton(
            color: Colors.red[600],
            textColor: Colors.white,
            onPressed: (){
              //sendOrder();
              for(int i = 0; i < globals.categories.length; i++){
                globals.categories[i]["choices"].forEach((choice) => (print(choice['selected'] = false)));
              }
              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderComplete()));
            },
            child: Text('Submit Order',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ),
        ));
  }
}

// Returns order
Widget getOrderList(BuildContext context) {
  var listView = ListView.builder(
      itemCount: globals.orderList.length,
      itemBuilder: (BuildContext context, int index) {
        return new Container(
            child: ListTile(
                contentPadding: EdgeInsets.only(bottom: 1),
                title: Text(globals.orderList[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 0.5))));
      });
  return listView;
}

class OrderComplete extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
      backgroundColor: Colors.grey[500],
      
      body: Column(
        children: <Widget>[
          Center(
            child: Text("Order Successful!",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black), 
            )),
          Center(
            child: RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => HomePage()));
            },
            child: Text("Return Home",
            style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),
            ),
            color: Colors.red[600],
          ),
          
          ),
        ],
      )
    );
  }
}

// Code to reset the order and return to home page.

            // onPressed: () {
            //   setState(() {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => globals.bottomNavPages[0]));
            //     globals.orderList = [];
            //     for (var i in globals.categories) {
            //       for (var j in i["choices"]) {
            //         if (j["selected"] == true) {
            //           j["selected"] = false;
            //         }
            //       }
            //     }
            //   });
            // },
