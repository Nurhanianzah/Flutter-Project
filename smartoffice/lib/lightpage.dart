import 'package:flutter/material.dart';

class LightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Light'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Tambahkan logika untuk kembali ke layar sebelumnya
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
