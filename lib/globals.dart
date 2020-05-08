library globals;

import 'main.dart';
import 'ordersummary.dart';

List<String> orderList = [];
int increment = 0;

List<dynamic> categories = [
  {
    "name": "Bread",
    "min": 1,
    "max": 1,
    "choices": [
      {"name": "Multigrain Bread", "selected": false},
      {"name": "Spinach Wrap", "selected": false},
      {"name": "Wheat Bread", "selected": false},
      {"name": "White Bread", "selected": false},
      {"name": "Wheat Wrap", "selected": false},
      {"name": "White Wrap", "selected": false}
    ]
  },
  {
    "name": "Cheese",
    "choices": [
      {"name": "American", "selected": false},
      {"name": "Cheddar", "selected": false},
      {"name": "Swiss", "selected": false},
      {"name": "Pepperjack", "selected": false},
      {"name": "Provolone", "selected": false},
    ]
  },
  {
    "name": "Meat",
    "choices": [
      {"name": "Ham", "selected": false},
      {"name": "Turkey", "selected": false},
      {"name": "Salami", "selected": false},
      {"name": "Bacon", "selected": false},
    ]
  },
  {
    "name": "Toppings",
    "choices": [
      {"name": "Lettuce", "selected": false},
      {"name": "Spinach", "selected": false},
      {"name": "Tomatoes", "selected": false},
      {"name": "Onions", "selected": false},
      {"name": "Cucumbers", "selected": false},
      {"name": "Peppers", "selected": false}
    ]
  },
  {
    "name": "Sauce",
    "choices": [
      {"name": "Yellow Mustard", "selected": false},
      {"name": "Honey Mustard", "selected": false},
      {"name": "Mayo", "selected": false},
      {"name": "Chipotle Mayo", "selected": false},
      {"name": "Hot Sauce", "selected": false}
    ]
  }
];

List<dynamic> bottomNavPages = [HomePage(), OrderSumPage()];
