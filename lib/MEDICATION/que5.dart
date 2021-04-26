import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/MEDICATION/Q5AnSNO/Q5ANS_NO.dart';
import 'package:medion/MEDICATION/q5AsYes/ONCE/Que72.dart';
import 'package:medion/MEDICATION/q5AsYes/YES.dart';
import 'package:medion/MEDICATION/que4.dart';

class Que5 extends StatefulWidget {
  @override
  _Que5State createState() => _Que5State();
}

class _Que5State extends State<Que5> {
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
                        child: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              ListTile(
                                  title: Text(
                                    'Yes',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                  onTap: () { Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return YES();
                                  }));}),
                              ListTile(
                                title: Text('No',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Que6Ans();
                                  }));
                                },
                              ),
                              ListTile(
                                title: Row(
                                  children: [
                                    Text('Only as needed',
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
                                    return Que72();
                                  }));
                                },
                              ),
                            ],
                          ).toList(),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_back,
                                    size: 36.0, color: Colors.white),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Que4();
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
                            height: 24,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
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
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
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
