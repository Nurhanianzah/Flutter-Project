import 'package:flutter/material.dart';

class lightpage extends StatefulWidget {
  lightpage({super.key});

  @override
  State<lightpage> createState() => _lightpageState();
}

class _lightpageState extends State<lightpage> {
  bool status = false;

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Halaman lampu'),
      ),
    );
  }
}
