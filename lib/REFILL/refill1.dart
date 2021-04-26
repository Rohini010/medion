import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/HOME/MORE.dart';
import 'package:medion/REFILL/refill2.dart';

class Refill1 extends StatefulWidget {
  @override
  _Refill1State createState() => _Refill1State();
}

class _Refill1State extends State<Refill1> {
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
                        child: Column(
                          children: [
                            SizedBox(height: 27),
                            TextField(
                              decoration: InputDecoration(
                                  errorStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText:
                                      'eg. remind me when i have left 2 pill(s) left',
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                  focusColor: Colors.blue),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.normal),
                            ),
                            SizedBox(
                              height: 255.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Refill2();
                                }));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 22.0),
                                decoration: BoxDecoration(
                                  //
                                  color: Color(0xFF0288D1),
                                  //  color: Colors.blue[500],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '              Next           ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
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
                                    size: 38.0, color: Colors.white),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return More();
                                  }));
                                },
                              ),
                              Text(
                                '   Add Refill',
                                style: TextStyle(
                                    fontSize: 26.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  /* Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Que5();
                                  })); */
                                },
                                child: Text('     Skip ',
                                    style: TextStyle(
                                        fontSize: 23.0,
                                        color: Colors.white54,
                                        wordSpacing: 15,
                                        fontWeight: FontWeight.normal)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34,
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
                            height: 52,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'How many pill(s) do you have left?',
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
