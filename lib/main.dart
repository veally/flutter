import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:startup_namer/view/MyApp.dart';
import 'package:startup_namer/view/MyScaffold.dart';
import 'package:startup_namer/view/TutorialHome.dart';
import 'package:startup_namer/view/MYButton.dart';
import 'package:startup_namer/view/Counter.dart';
import 'package:startup_namer/view/ShoppingListItem.dart';
import 'package:startup_namer/view/lake/Lakes.dart';
import 'package:startup_namer/view/gridview/MyGridView.dart';
import 'package:startup_namer/view/gridview/MyListView.dart';
import 'package:startup_namer/view/MyStack.dart';
import 'package:startup_namer/view/MyCard.dart';
import 'package:startup_namer/view/Animation.dart';
import 'package:startup_namer/view/InputValid.dart';

//void main() => runApp(new MyApp());
void main() {
  debugPaintSizeEnabled = false;
  runApp(new MyLakes());

//  runApp(new MaterialApp(
//    title: "my app",
////    home: new MyScaffold(),
//
////      home: new ShoppingList(
////        products: <Product>[
////          new Product(name: 'eggs'),
////          new Product(name: "flour"),
////          new Product(name: "chocolate chips"),
////        ],
////      ),
//    home: new MyFirstLayout(),
//  ));
}
