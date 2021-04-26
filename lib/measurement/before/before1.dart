import 'package:flutter/material.dart';
import 'package:medion/measurement/before/BPbefore.dart';
import 'package:medion/measurement/measure1.dart';
class BEFORE1 extends StatefulWidget {
  @override
  _BEFORE1State createState() => _BEFORE1State();
}

class _BEFORE1State extends State<BEFORE1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
                     onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Measure1();
                }));
          },
                      icon:   Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Blood Pressure',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF0277BD),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ SizedBox(
                height: 259.0,
                ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
               
                  IconButton(
               icon: Icon(Icons.add_circle_outlined,
                          size: 70, color: Color(0xFF0277BD)),
             
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BEFORE2();
                }));
              },
            ), SizedBox(
                width: 159.0,
                ),
              ],
            ),
          
          ],
        ));
  }
}
