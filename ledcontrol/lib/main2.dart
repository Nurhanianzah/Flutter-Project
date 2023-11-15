import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ledcontrol/homemain.dart';
import 'package:ledcontrol/main.dart';
import 'package:ledcontrol/navbar.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new ledcontrol2(),
  ));
}

class ledcontrol2 extends StatefulWidget {
  @override
  State<ledcontrol2> createState() => _ledcontrol2State();
}

class _ledcontrol2State extends State<ledcontrol2> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(255, 0, 132, 255),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        )),
        title: Center(
          child: new Text(
            'Led Control',
            style:
                GoogleFonts.firaSans(textStyle: TextStyle(color: Colors.white)),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          status
              ? Icon(
                  Icons.lightbulb_rounded,
                  size: 290,
                  color: Colors.amber,
                )
              : Icon(
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
                });
                print(status);
              },
            ),
          ),
          Container(
            child: new Text("LIGHT 2",
                style:
                    GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 35))),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeMain()));
        },
        shape: CircleBorder(),
        backgroundColor: Color.fromARGB(255, 0, 132, 255),
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: Color.fromARGB(255, 0, 132, 255),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ledcontrol()));
                ;
              },
              icon: Icon(Icons.lightbulb_rounded, color: Colors.white),
              iconSize: 45,
              tooltip: 'Light 1',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.lightbulb_rounded, color: Colors.black),
              iconSize: 45,
              tooltip: 'Light 2',
            ),
          ],
        ),
      ),
    );
  }
}
