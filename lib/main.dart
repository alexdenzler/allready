import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'itemtype.dart';
import 'globals.dart' as globals;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// runApp
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// HomePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //test
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
      // Creates a container with Atrium Picture that you can click on
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network('https://themacweekly.com/wp-content/uploads/2018/01/Atrium_news_Rait18-1024x613.jpg'),
                RaisedButton(
                  onPressed: () {
                    for(int i = 0; i < globals.categories.length; i++){
                      globals.categories[i]["choices"].forEach((choice) => (print(choice['selected'] = false)));
                   }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemTypePage()));
                  },
                  child: const Text(
                    'Start New Order',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red[600],
                )
              ])),
    );
  }
}
