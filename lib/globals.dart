library globals;

import 'breadpage.dart';
import 'cheesepage.dart';
import 'meatpage.dart';
import 'saucepage.dart';
import 'toppingspage.dart';

List<String> orderList =[];
List<String> itemTypes = <String>['Bread', 'Meat', 'Cheese', 'Toppings', 'Sauce'];
List<dynamic> pages = <dynamic>[BreadPage(), MeatPage(), CheesePage(), ToppingsPage(), SaucePage()];

List<String> breads = <String>["Multigrain Bread","Spinach Wrap","Wheat Bread","White Bread","Wheat Wrap","White Wrap"];
List<String> cheeses = <String>["American","Cheddar","Pepperjack","Provolone","Swiss"];
List<String> meats = <String>["Bacon","Ham","Roast Beef","Salami","Turkey"];
List<String> sauces = <String>["Chipotle Sauce","Honey Mustard","Mayonnaise","Yellow Mustard"];
List<String> toppings = <String>["Cucumber","Green Papper","Lettuce","Onion","Spinach","Tomato"];

List<bool> breadList = [false, false, false, false, false, false];
List<bool> cheeseList = [false, false, false, false, false];
List<bool> meatList = [false, false, false, false, false];
List<bool> sauceList = [false, false, false, false];
List<bool> toppingsList = [false, false, false, false, false, false];



