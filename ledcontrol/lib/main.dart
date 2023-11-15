import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ledcontrol/firebase_options.dart';
import 'package:ledcontrol/homemain.dart';
import 'package:ledcontrol/light1_page.dart';
import 'package:ledcontrol/light2_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ledcontrol(),
  ));
}

class ledcontrol extends StatefulWidget {
  @override
  State<ledcontrol> createState() => _ledcontrolState();
}

class _ledcontrolState extends State<ledcontrol> {
  bool status = false;

  final List<Widget> _page = <Widget>[HomeMain(), Light1Page(), Light2Page()];

  int visit = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 12,
        backgroundColor: Colors.teal,
      ),
      body: _page.elementAt(visit),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visit = 0;
          });
        },
        shape: CircleBorder(),
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.home,
          color: visit == 0 ? Colors.teal.shade200 : Colors.teal.shade50,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        padding: EdgeInsets.zero,
        color: Colors.teal,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  visit = 1;
                });
              },
              icon: Icon(Icons.lightbulb_rounded,
                  color: visit == 1 ? Colors.teal.shade200 : Colors.teal.shade50),
              iconSize: 45,
              tooltip: 'Light 1',
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  visit = 2;
                });
              },
              icon: Icon(Icons.lightbulb_rounded,
                  color: visit == 2 ? Colors.teal.shade200 : Colors.teal.shade50),
              iconSize: 45,
              tooltip: 'Light 2',
            ),
          ],
        ),
      ),
    );
  }
}
