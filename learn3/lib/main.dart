import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 224, 215),
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(255, 7, 115, 230),
        leading: new Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: new Center(
          child: new Text(
            "App bar",
            style: new TextStyle(color: Colors.white),
          ),
        ),
        actions: <Widget>[
          new Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
