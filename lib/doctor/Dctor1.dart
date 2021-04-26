// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/doctor/doctor2.dart';
// ignore: unused_import
import 'package:table_calendar/table_calendar.dart';

class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  String dname, demail, dmobile, ddate, daddress;

  final dnamecon = TextEditingController();
  final demailcon = TextEditingController();
  final dmobilecon = TextEditingController();
  final ddatecon = TextEditingController();
  final daddresscon = TextEditingController();
  DateTime pickedDate;
  TimeOfDay time;
  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Doctor'),backgroundColor: Color(0xFF0277BD),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /*Material(
            elevation: 9,
            color: Color(0xFF0277BD),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 13.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  width: 1.0,
                  color: Color(0xFF0277BD),
                )),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.cancel,
                    size: 35.0,
                    color: Colors.white,
                  ),
                  Text(
                    '     Add Doctor',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '                  Done',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),*/
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.userMd,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: TextField(
                        controller: dnamecon,
                        decoration: InputDecoration(
                          hintText: 'Doctor Name',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.black,
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Speciality',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  fillColor: Colors.black,
                ))),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Icon(
                  Icons.mail_outline_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: TextField(
                        controller: demailcon,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.black,
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.phone,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: TextField(
                        controller: dmobilecon,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.black,
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.clock,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ListTile(
                    title: Center(
                      child: Text(
                          " ${pickedDate.day},${pickedDate.month.toString()}${pickedDate.year.toString()}"),
                    ),
                    onTap: _pickDate,
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "${time.hour}:${time.minute}",
                    ),
                    onTap: _pickTime,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: TextField(
                        controller: daddresscon,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          hintText: 'Address',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.black,
                        )))
              ],
            ),
          ),

          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              setState(() {
                dname = dnamecon.text;
                demail = demailcon.text;
                daddress = daddresscon.text;
                dmobile = dmobilecon.text;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Doctor2(
                              addname: dname,
                              addAddress: daddress,
                            )));
              });
            },
            child: Text(
              'Save',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
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
