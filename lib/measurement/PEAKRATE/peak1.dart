import 'package:flutter/material.dart';
import 'package:medion/measurement/PEAKRATE/peak2.dart';
import 'package:medion/measurement/measure1.dart';

class Peak1 extends StatefulWidget {
  @override
  _Peak1State createState() => _Peak1State();
}

class _Peak1State extends State<Peak1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Measure1();
                }));
          },
                      icon:  Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Peak expiratory flow rate(PEFR)',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF0277BD),
        ),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
          
            SizedBox(
              height: 339.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon:  Icon(Icons.add_circle_outlined,
                          size: 70, color: Color(0xFF0277BD)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Peak2();
                    }));
                  },
                ),
                SizedBox(width: 50),
              ],
            )
          ],
        ));
  }
}
