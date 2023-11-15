import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomeMain(),
  ));
}

class HomeMain extends StatefulWidget {
  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Smart',
                    style: TextStyle(color: Colors.white, fontSize: 55)),
                Text('Office',
                    style: TextStyle(
                        color: Colors.teal.shade50, fontSize: 100, height: 0.8))
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 189,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(210),
                  bottomRight: Radius.circular(210))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Light Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Plug',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
            ),
          ),
        ),
      ],
    );
  }
}
