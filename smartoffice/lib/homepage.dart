import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartoffice/lightpage.dart';
import 'package:smartoffice/plugpage.dart';

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
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 70),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LightPage()));
                  },
                  child: Container(
                      width: 140,
                      height: 140,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 13, 198, 179),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/images/light.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 70),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PlugPage()));
                  },
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 13, 198, 179),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/plug.png',
                          width: 100,
                          height: 100,
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
