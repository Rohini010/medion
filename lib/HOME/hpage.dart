import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:medion/MEDICATION/new1.dart';
// ignore: unused_import
import 'package:medion/MEDICATION/que4.dart';
// ignore: unused_import
import 'package:medion/MEDICATION/que5.dart';
// ignore: unused_import
import 'package:table_calendar/table_calendar.dart';

class HPVieww extends StatefulWidget {
  @override
  _HPViewwState createState() => _HPViewwState();
}

class _HPViewwState extends State<HPVieww> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Material(
                elevation: 12,
                color: Color(0xFF0277BD),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 11.0,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Color(0xFF0277BD),
                    ),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      Text(
                        '    Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Material(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 3.0,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  )),
                  child: TableCalendar(
                      initialCalendarFormat: CalendarFormat.week,
                      calendarStyle: CalendarStyle(
                        todayColor: Colors.blue,
                        todayStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      calendarController: _controller),
                ),
              ),

              SizedBox(
                height: 75.0,
              ),
              Icon(
                FontAwesomeIcons.calendarCheck,
                size: 60.0,
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Monitor tour med schedule',
                    style: TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Column(
                children: [
                  Text(
                    '  View your daily schedule and mark your',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'meds when taken',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ],
                  ),
                ],
              ),
              // Center(child: Text('when takengh',  style: TextStyle(color: Colors.white54, fontSize: 18.0),)),
              SizedBox(
                height: 45.0,
              ),
              SizedBox(height: 43),
              Material(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 238,
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle_outlined,
                          size: 70, color: Color(0xFF0277BD)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Que1();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
