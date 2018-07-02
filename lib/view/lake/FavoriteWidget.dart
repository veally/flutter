import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FavoriteState();
  }
}

class _FavoriteState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount--;
        _isFavorite = false;
      } else {
        _favoriteCount++;
        _isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(0.0),
          child: new IconButton(
            icon: _isFavorite
                ? new Icon(Icons.star)
                : new Icon(Icons.star_border),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
//        new Text('$_favoriteCount')
        new SizedBox(
          width: 15.0,
          child: new Center(
            child: new Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
