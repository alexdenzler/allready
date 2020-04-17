import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ToppingsPage
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  class ToppingsPage extends StatefulWidget{
    const ToppingsPage({ Key key }) : super(key: key);
    
    @override
    _ToppingsPageState createState() => _ToppingsPageState();
  }

  class _ToppingsPageState extends State<ToppingsPage> {
    //list of bool values of whether each item is checked or not
    List<bool> checked = <bool>[false,false];
    
    @override
  Widget build(BuildContext context) {
    final List<String> toppings = <String>["Tomatoes","Lettuce"];
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text("Allready",
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
              itemCount: toppings.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: CheckboxListTile(
                    title: Text(toppings[index],
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                    )),
                    value: checked[index],
                    onChanged: (val) {
                      setState(() {
                        checked[index] = val;
                      });
                    },
                  ),
                );
              }
            ),
    );
  }
  }
        
//     @override 
//     Widget build(BuildContext context) {
//       final List<String> toppings = <String>["topping 1","topping 2"];
    
//       return Scaffold(
//         backgroundColor: Colors.grey[500],
//         appBar: AppBar(
//         title: Text(
//         'AllReady',
//         style: TextStyle(
//           fontSize: 30.0,
//           fontWeight: FontWeight.bold,
//           letterSpacing: 2.0,
//           color: Colors.red[600],
//           fontFamily: 'ShadowsIntoLight',
//         ),
//       ),
//       centerTitle: true,
//       backgroundColor: Colors.blueGrey[300],
//     ),
//         // body: ListView.builder(
//         //         itemCount: toppings.length,
//         //         itemBuilder: (BuildContext context, int index){
//                   body: CheckboxListTile(
//                   value: ones,
//                   title: Text("butts"),
//                   onChanged: (bool val){
//                     setState((){ones = val;} 
//                     );
//                   // },
                  
//             // trailing: Checkbox(value: false, onChanged: null),
//             // //Icon(Icons.check_box_outline_blank),
//             // title: Text(toppings[index],
//             //   style: TextStyle(
//             //     fontWeight: FontWeight.bold
//             //   )
//             // ),
//             //      );
//                }
//         ),

//       );
//     }
//     // Makes list of buttons for Toppings Page
//   //Widget getToppingsList(BuildContext context){
    
    
//     //return listView;
//   }
//  // }



  
//         children: <Widget>[
          
//           Expanded(
//               child: Container(
//             height: 350.0,
//             child: Column(
//               children: [
//                 CheckboxListTile(
//                   title: Text("Checkbox Text"),
//                   value: _isChecked,
//                   onChanged: (val) {
//                     setState(() {
//                       _isChecked = val;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           )),
//         ],
//       ),
//     );
//   }
// }