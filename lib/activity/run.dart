import 'package:flutter/material.dart';
import 'package:medion/activity/activity1.dart';
import 'package:medion/activity/run2.dart';
class Run1 extends StatefulWidget {
  @override
  _Run1State createState() => _Run1State();
}

class _Run1State extends State<Run1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Activity();
                }));
          },
                      icon:  Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Running',
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
                      return Run2();
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
