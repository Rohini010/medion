import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/measurement/dailySTEPS/dailystep2.dart';
import 'package:medion/measurement/measure1.dart';

class Daily extends StatefulWidget {
  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Measure1();
              }));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Daily step',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF0277BD),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            SizedBox(width: 285),
                IconButton(
                  icon: Icon(Icons.add_circle_outlined,
                      size: 70, color: Color(0xFF0277BD)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return STEP();
                    }));
                  },
                ),
              
              ],
            )
          ],
        ));
  }
}
