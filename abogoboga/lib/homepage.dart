import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new homepage(),
  ));
}

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Smart',
                    style: TextStyle(color: Colors.white, fontSize: 50, height: 1.5)),
                Text('Office',
                    style: TextStyle(color: Colors.white, fontSize: 75, height: 0.6))
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 189,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
      ],
    );
  }
}
