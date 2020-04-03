import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
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
        ), // TextStyle
      ), // Text
      centerTitle: true,
      backgroundColor: Colors.blueGrey[300],
    ), // appBar
      body: Container(
        padding: EdgeInsets.fromLTRB(20,0,20,410),
        color: Colors.blueGrey[300],
        child: FlatButton(
          onPressed: () {
            print('click');
          },
          child: Image.network('https://themacweekly.com/wp-content/uploads/2018/01/Atrium_news_Rait18-1024x613.jpg'),
        ), // RaisedButton
      ), // Center
    ); // Scaffold
  }
}
