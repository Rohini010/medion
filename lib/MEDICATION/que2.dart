import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/MEDICATION/new1.dart';
// ignore: unused_import
import 'package:medion/MEDICATION/que4.dart';

class Que2 extends StatefulWidget {
  @override
  _Que2State createState() => _Que2State();
}

class _Que2State extends State<Que2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Material(
        color: Color(0xFF0277BD),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      margin: EdgeInsets.only(top: size.height * 0.39),
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24))),
                      child: ListView(
                        children: ListTile.divideTiles(
                          context: context,
                          tiles: [
                            ListTile(
                                title: Text(
                                  'Pill',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Que4();
                                  }));
                                }),
                            ListTile(
                              title: Text('Solution',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black)),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Que4();
                                }));
                              },
                            ),
                            ListTile(
                              title: Row(
                                children: [
                                  Text('Injection',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  //Icon(Icons.airplanemode_off_outlined),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Que4();
                                }));
                              },
                            ),
                            ListTile(
                                title: Row(
                                  children: [
                                    Text('Powder',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black)),
                                    //Icon(Icons.airplanemode_off_outlined),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Que4();
                                  }));
                                }),
                            ListTile(
                              title: Row(
                                children: [
                                  Text('Drops',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  //Icon(Icons.airplanemode_off_outlined),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Que4();
                                }));
                              },
                            ),
                            ListTile(
                              title: Row(
                                children: [
                                  Text('Inhaler',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  //Icon(Icons.airplanemode_off_outlined),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Que4();
                                }));
                              },
                            ),
                            ListTile(
                              title: Row(
                                children: [
                                  Text('Others',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  //Icon(Icons.airplanemode_off_outlined),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Que4();
                                }));
                              },
                            ),
                          ],
                        ).toList(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                               IconButton(
                                                                              icon: Icon(Icons.arrow_back,
                                            size: 38.0, color: Colors.white),onPressed: () {
                                              Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Que1();
                                  }));
                                            },
                                      ), 
                              Text(
                                '   Add medication',
                                style: TextStyle(
                                    fontSize: 26.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34,
                          ),
                          Container(padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  FontAwesomeIcons.calendarAlt,
                                  color: Colors.black87,
                                  size: 43.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Do you need to take this everyday?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
