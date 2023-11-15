import 'package:abogoboga/lightpage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:abogoboga/homepage.dart';
import 'package:abogoboga/plugpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: smartoffice(),
  ));
}

class smartoffice extends StatefulWidget {
  @override
  State<smartoffice> createState() => _smartofficeState();
}

class _smartofficeState extends State<smartoffice> {
  final PageController __pagecontroller = PageController();
  final List<Widget> pages = [homepage(), lightpage(), plugpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: __pagecontroller,
          children: pages,
          onPageChanged: (int index) {
            setState(() {});
          },
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.teal,
          items: [
            TabItem(icon: Icons.home_rounded, title: 'Home'),
            TabItem(icon: Icons.lightbulb, title: 'Light'),
            TabItem(icon: Icons.electrical_services, title: 'Plug'),
          ],
          onTap: (int index) {
            __pagecontroller.animateToPage(index,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          },
        ));
  }
}
