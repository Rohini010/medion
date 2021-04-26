import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/HOME/homepage.dart';
// ignore: unused_import
import 'package:medion/MEDICATION/que2.dart';

class Que1 extends StatefulWidget {
  @override
  _Que1State createState() => _Que1State();
}

class _Que1State extends State<Que1> {
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
                    Material(
                      color: Color(0xFF0277BD),
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          margin: EdgeInsets.only(top: size.height * 0.39),
                          height: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24))),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 28),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Enter your med name',
                                      hintStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                      fillColor: Colors.blue,
                                      focusColor: Colors.black),
                                ),
                              ),
                              SizedBox(height: 199),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Que2();
                                  }));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15.0, horizontal: 34.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0277BD),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Add a med',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 30.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              IconButton(
                                                              icon: Icon(Icons.arrow_back,
                                    size: 38.0, color: Colors.white),onPressed: () { Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomePage();
                                  }));},
                              ),
                              Text(
                                '   Add  medication',
                                style: TextStyle(
                                    fontSize: 26.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Container(padding: EdgeInsets.symmetric(
                          horizontal: 10.0,),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
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
                            height: 35,
                          ),
                          Container(padding: EdgeInsets.symmetric(
                          horizontal: 10.0),
                            child: Text(
                              'What med would you like to add?',
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
