import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/REFILL/refill1.dart';
import 'package:medion/doctor/Dctor1.dart';
import 'package:medion/measurement/measure1.dart';
//import 'package:medion/measurement/measure2.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Material(
            elevation: 9,
            color: Color(0xFF0277BD),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 9.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.person,
                    size: 35.0,
                    color: Colors.white,
                  ),
                  Text(
                    '        Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(FontAwesomeIcons.heart),
                    SizedBox(width: 20),
                    Text(
                      'Measurements',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Measure1()),
                  );
                },
              ),
           
      /*        ListTile(
                  title: Row(
                    children: [
                      Icon(FontAwesomeIcons.calendar), SizedBox(width: 20),
                      Text('Activity',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                      //Icon(Icons.airplanemode_off_outlined),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Activity()),
                    );
                  }),*/
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.userMd,
                      size: 29,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('Doctors',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    //Icon(Icons.airplanemode_off_outlined),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Doctor()),
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(FontAwesomeIcons.candyCane), SizedBox(width: 20),
                    Text('Refills',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    //Icon(Icons.airplanemode_off_outlined),
                  ],
                ),
                   onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Refill1(),)
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.chartBar,
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Report',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    //Icon(Icons.airplanemode_off_outlined),
                  ],
                ),
              ),
ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Logout',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    //Icon(Icons.airplanemode_off_outlined),
                  ],
                ),
              ),

            ]).toList(),
          ),
        ],
      ),
    );
  }
}
