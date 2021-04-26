import 'package:flutter/material.dart';
import 'package:medion/measurement/BP/Blood_Pressure.dart';
import 'package:medion/measurement/measure1.dart';
class Blood1 extends StatefulWidget {
  @override
  _Blood1State createState() => _Blood1State();
}

class _Blood1State extends State<Blood1> {
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
          children: <Widget>[
            Row(
              children: [
                SizedBox(
                  height: 259.0,
                ),
                  IconButton(
               icon: Icon(Icons.add_circle_outlined,
                          size: 70, color: Color(0xFF0277BD)),
             
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BloodP();
                }));
              },
            )
              ],
            ),
          
          ],
        ));
  }
}
