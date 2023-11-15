import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => print('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.warning_amber_rounded),
            title: Text('About Led Control'),
            onTap: () => print('About Led Control'),
          ),
        ],
      ),
    );
  }
}
