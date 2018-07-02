import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print("onTap");
      },
      onDoubleTap: () {
        print("onDoubleTap");
      },
      onLongPress: () {
        print("onLongPress");
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(5.0),
            color: Colors.lightGreen[200]),
        child: new Center(
          child: new Text(
            "this is center text content of MyButton.",
            style: new TextStyle(fontSize: 20.0, color: Colors.black),

          ),
        ),
      ),
    );
  }
}
