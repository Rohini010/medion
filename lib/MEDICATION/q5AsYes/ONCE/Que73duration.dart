import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/MEDICATION/q5AsYes/ONCE/Que72.dart';
import 'package:medion/MEDICATION/q5AsYes/ONCE/setend.dart';

class Duration1 extends StatefulWidget {
  @override
  _Duration1State createState() => _Duration1State();
}

class _Duration1State extends State<Duration1> {
  DateTime pickedDate;
  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
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
                            Row(
                              children: [
                                Icon(Icons.calendar_today),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Select Date:',
                                  style: TextStyle(
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      " ${pickedDate.day},${pickedDate.month.toString()}${pickedDate.year.toString()}",
                                      style: TextStyle(
                                          fontSize: 23.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    onTap: _pickDate,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 179),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Setend();
                                }));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 34.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFF0277BD),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add a med',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
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
                                      return Que72();
                                    }));
                                  }),
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
                                  FontAwesomeIcons.calendarAlt,
                                  color: Colors.black87,
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
                              'Set Start date-',
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

  _pickDate() async {
    DateTime date = await showDatePicker(
        context: context,
        //   initialDate: DateTime.now(),
        initialDate: pickedDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (date != null)
      setState(() {
        pickedDate = date;
      });
  }
}
