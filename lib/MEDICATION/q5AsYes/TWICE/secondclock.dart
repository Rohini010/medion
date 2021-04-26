import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/MEDICATION/q5AsYes/TWICE/second.dart';
import 'package:medion/MEDICATION/q5AsYes/TWICE/third.dart';

class SClock extends StatefulWidget {
  @override
  _SClockState createState() => _SClockState();
}

class _SClockState extends State<SClock> {
 
    TimeOfDay time;
  @override
  void initState() {
    super.initState();
    //pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

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
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Select Time',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text("${time.hour}:${time.minute}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 23.0,
                                            fontWeight: FontWeight.normal)),
                                    onTap: _pickTime,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 210,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Third();
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
                                    size: 36.0, color: Colors.white),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Second();
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
                            height: 34,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  FontAwesomeIcons.clock,
                                  color: Colors.white,
                                  size: 43.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'When do  you need to take the first dose?',
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

  _pickTime() async {
    TimeOfDay t = await showTimePicker(
        context: context,
        //   initialDate: DateTime.now(),
        initialTime: time);
    if (time != null)
      setState(() {
        time = t;
      });
  }
}
