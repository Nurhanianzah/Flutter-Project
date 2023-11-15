import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
      child: new Container(
        color: const Color.fromARGB(255, 0, 167, 6),
        width: 200.0,
        height: 100.0,
        child: new Center(child: new Icon(Icons.android)),
      ),
    ));
  }
}
