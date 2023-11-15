import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartoffice/lightpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 130),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Smart',
                      style: GoogleFonts.antonio(
                          color: Colors.white, fontSize: 50)),
                  Text(
                    'Office',
                    style: GoogleFonts.antonio(
                        color: Colors.white, fontSize: 130, height: 0.8),
                  )
                ],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 450,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 13, 198, 179),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(90),
                    bottomLeft: Radius.circular(90))),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LightPage()));
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Color.fromARGB(255, 13, 198, 179),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Radius.circular(radius))
                  ),
                child: Icon(Icons.lightbulb_rounded ,color: Colors.white, size: 100,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
