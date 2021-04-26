import 'package:flutter/material.dart';
import 'package:medion/measurement/WEIGHTS/weight2.dart';
import 'package:medion/measurement/measure1.dart'; 
class WEIGHT extends StatefulWidget {
  @override
  _WEIGHTState createState() => _WEIGHTState();
}

class _WEIGHTState extends State<WEIGHT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>   Measure1()));
          },
                      icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Weight',
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
                      return Weight1();
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
