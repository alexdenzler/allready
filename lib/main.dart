import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
    return Scaffold(
      backgroundColor: Colors.blueGrey[350],
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
      elevation: 0.0,
    ),
      // Creates a container with Atrium Picture that you can click on
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        margin: EdgeInsets.all(10.0),
        //color: Colors.blueGrey[300],
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
    );
  }
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ItemTypePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
class ItemTypePage extends StatelessWidget {
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
      body: getItemTypeList(context),
    );
  }
}
// Makes list of buttons for ItemTypePage
  Widget getItemTypeList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // Bread Option
      ListTile(
        title: Text("Bread"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BreadPage())
          );
        },
      ),
      // Meat Option
      ListTile(
        title: Text("Meat"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MeatPage())
          );
        },
      ),
      ListTile(
        title: Text("Cheese"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheesePage())
          );
        },
      ),
      ListTile(
        title: Text("Toppings"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ToppingsPage())
          );
        },
      ),
      ListTile(
        title: Text("Sauce"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SaucePage())
          );
        },
      ),
    ],
  );
  return listView;
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// BreadPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class BreadPage extends StatelessWidget {
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
      body: getBreadList(context),
    );
    }
  }
  // Makes list of buttons for BreadPage
  Widget getBreadList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // White Bread
      ListTile(
        title: Text("White Bread"),
        onTap: () {},
      ),
      // Wheat Bread
      ListTile(
        title: Text("Wheat Bread"),
        onTap: () {},
      ),
      // Multigrain Bread
      ListTile(
        title: Text("Multigrain Bread"),
        onTap: () {},
      ),
      // White Wrap
      ListTile(
        title: Text("White Wrap"),
        onTap: () {},
      ),
      // Whole Wheat Wrap
      ListTile(
        title: Text("Whole Wheat Wrap"),
        onTap: () {},
      ),
      // Spinach Wrap
      ListTile(
        title: Text("Spinach Wrap"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}


// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// MeatPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class MeatPage extends StatelessWidget {
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
        body: getMeatList(context),
      );
    }
  }
  // Makes list of buttons for MeatPage
  Widget getMeatList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // Bacon
      ListTile(
        title: Text("Bacon"),
        onTap: () {},
      ),
      // Ham
      ListTile(
        title: Text("Ham"),
        onTap: () {},
      ),
      // Roast Beef
      ListTile(
        title: Text("Roast Beef"),
        onTap: () {},
      ),
      // Salami
      ListTile(
        title: Text("Salami"),
        onTap: () {},
      ),
      // Turkey
      ListTile(
        title: Text("Turkey"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// CheesePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class CheesePage extends StatelessWidget {
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
        body: getCheeseList(context),
      );
    }
  }
  // Makes list of buttons for Cheese Page
  Widget getCheeseList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // American
      ListTile(
        title: Text("American"),
        onTap: () {},
      ),
      // Cheddar
      ListTile(
        title: Text("Cheddar"),
        onTap: () {},
      ),
      // Pepperjack
      ListTile(
        title: Text("Pepperjack"),
        onTap: () {},
      ),
      // Provolone
      ListTile(
        title: Text("Provolone"),
        onTap: () {},
      ),
      // Swiss
      ListTile(
        title: Text("Swiss"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ToppingsPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class ToppingsPage extends StatelessWidget {
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
        body: getToppingsList(context),
      );
    }
  }
  // Makes list of buttons for Toppings Page
  Widget getToppingsList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // Cucumber
      ListTile(
        title: Text("Cucumber"),
        onTap: () {},
      ),
      // Green Pepper
      ListTile(
        title: Text("Green Pepper"),
        onTap: () {},
      ),
      // Lettuce
      ListTile(
        title: Text("Lettuce"),
        onTap: () {},
      ),
      // Onion
      ListTile(
        title: Text("Onion"),
        onTap: () {},
      ),
      // Spinach
      ListTile(
        title: Text("Spinach"),
        onTap: () {},
      ),
      // Tomato
      ListTile(
        title: Text("Tomato"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// SaucePage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class SaucePage extends StatelessWidget {
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
        body: getSauceList(context,)
      );
    }
  }
  // Makes list of buttons for Sauce Page
  Widget getSauceList(BuildContext context) {
  var listView = ListView(
    children: <Widget> [
      // Chipotle Sauce
      ListTile(
        title: Text("Chipotle Sauce"),
        onTap: () {},
      ),
      // Honey Mustard
      ListTile(
        title: Text("Honey Mustard"),
        onTap: () {},
      ),
      // Mayonnaise
      ListTile(
        title: Text("Mayonnaise"),
        onTap: () {},
      ),
      // Yellow Mustard
      ListTile(
        title: Text("Yellow Mustard"),
        onTap: () {},
      ),
    ],
  );
  return listView;
}