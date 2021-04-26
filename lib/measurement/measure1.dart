import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/measurement/BP/Blood_Pressure.dart';
import 'package:medion/measurement/PEAKRATE/peak1.dart';
import 'package:medion/measurement/WEIGHTS/weight.dart';
import 'package:medion/measurement/after/BPA.dart';
import 'package:medion/measurement/before/before1.dart';
import 'package:medion/measurement/dailySTEPS/dailyst1.dart';
import 'package:medion/measurement/TEMPERATURE/temp1.dart';

class Measure1 extends StatefulWidget {
  @override
  _Measure1State createState() => _Measure1State();
}

class _Measure1State extends State<Measure1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Measurements'),
        backgroundColor: Color(0xFF0277BD),
      ),
      body: Stack(
        children: [
          ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                // ignore: deprecated_member_use
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Blood Pressure',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (contxt) => BloodP()));
                },
              ),
             
                // ignore: deprecated_member_use
    ListTile(
                // ignore: deprecated_member_use
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Daily steps',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    //Icon(Icons.airplanemode_off_outlined),
                  ],
                ),
                  onTap: () {
                  Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (contxt) => Daily()));
                },
),
              ListTile(
                // ignore: deprecated_member_use
                title: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Weight',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                  ],
                ),onTap: () {
                  Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (contxt) =>WEIGHT()));
                },
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Blood sugar(before the meal)',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    //Icon(Icons.airplanemode_off_outlined),
                  ],
                ),
                  onTap: () {
                  Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (contxt) => BEFORE1()));
                },
),
              ListTile(
                // ignore: deprecated_member_use
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Blood sugar(after the meal)',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    //Icon(Icons.airplanemode_off_outlined),
                  ],
                ),  onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (contxt) => AFTER1()));
                },
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Peak expiratory flow rate(PEFR)',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    //Icon(Icons.airplanemode_off_outlined),
                  ],
                ),  onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (contxt) => Peak1()));
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Temperature',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (contxt) => Temp()));
                },
              ),
             
            ]).toList(),
          ),
        ],
      ),
    );
  }
}
