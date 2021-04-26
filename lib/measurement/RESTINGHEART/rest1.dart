import 'package:flutter/material.dart';
import 'package:medion/measurement/RESTINGHEART/Restingheart2.dart';
import 'package:medion/measurement/measure1.dart';
class Rest extends StatefulWidget {
  @override
  _RestState createState() => _RestState();
}

class _RestState extends State<Rest> {
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
            'Resting heart rate',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF0277BD),
        ),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 259.0,
            ),
            SizedBox(width: 120),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
            SizedBox(width: 120),
                IconButton(
                   icon: Icon(Icons.add_circle_outlined,
                          size: 70, color: Color(0xFF0277BD)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Resting();
                    }));
                  },
                ),
                
            SizedBox(width: 100),
              ],
            )
          ],
        ));
  }
}