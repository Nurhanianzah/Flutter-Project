import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class Light2Page extends StatefulWidget {
  Light2Page({super.key});

  @override
  State<Light2Page> createState() => _Light2PageState();
}

class _Light2PageState extends State<Light2Page> {
  bool status = false;

  final dbRef = FirebaseDatabase.instance.ref();

  getData() async {
    final snapshot = await dbRef.child('L2').get();
    if (snapshot.exists) {
      setState(() {
        var data = snapshot.value as String;
        if (data == "1") {
          setState(() {
            status = true;
          });
        } else {
          setState(() {
            status = false;
          });
        }
      });
    } else {
      print('No data available.');
    }
  }

  updateData(bool data) async {
    await dbRef.update({"L2": data ? "1" : "0"});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        status
            ? const Icon(
                Icons.lightbulb_rounded,
                size: 290,
                color: Colors.amber,
              )
            : const Icon(
                Icons.lightbulb_rounded,
                color: Color.fromARGB(255, 165, 165, 165),
                size: 290,
              ),
        Container(
          child: FlutterSwitch(
            width: 125.0,
            height: 55.0,
            valueFontSize: 25.0,
            toggleSize: 45.0,
            value: status,
            borderRadius: 30.0,
            padding: 8.0,
            showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
                updateData(val);
              });
              print(status);
            },
          ),
        ),
        Container(
          child: Text("LIGHT 2",
              style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 35))),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
