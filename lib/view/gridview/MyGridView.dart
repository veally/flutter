import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// The images are saved with names pic1.jpg, pic2.jpg...pic30.jpg.
// The List.generate constructor allows an easy way to create
// a list when objects have a predictable naming pattern.
List<Container> _buildGridTileList(int count) {
  List<Container> containers = List<Container>.generate(
  count,
  (int index) =>
//  Container(child:  Image.asset('images/pic${index+1}.jpg')));
  Container(child:  Image.network("https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/grid/images/pic${index+1}.jpg")));
  return containers;
}

Widget buildGrid() {
  return GridView.count(crossAxisCount: 2,padding: const EdgeInsets.all(10.0),
    mainAxisSpacing : 2.0,
   crossAxisSpacing: 2.0,
   children: _buildGridTileList(30),);

//  return GridView.extent(
//      maxCrossAxisExtent: 180.0,
//      padding: const EdgeInsets.all(4.0),
//      mainAxisSpacing: 1.0,
//      crossAxisSpacing: 1.0,
//      children: _buildGridTileList(30));
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}