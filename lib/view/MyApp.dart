import 'package:flutter/material.dart';
import 'list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
        accentColor: Colors.blue,
      ),
      home: new RandomWords(),
    );
  }
}
