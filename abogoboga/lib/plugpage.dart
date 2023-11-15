import 'package:flutter/material.dart';

class plugpage extends StatefulWidget {
  plugpage({super.key});

  @override
  State<plugpage> createState() => _plugpageState();
}

class _plugpageState extends State<plugpage> {
  bool status = false;

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Halaman Colokan'),
      ),
    );
  }
}
