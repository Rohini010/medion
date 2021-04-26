import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/measurement/WEIGHTS/weight.dart';

class Weight1 extends StatefulWidget {
  @override
  _Weight1State createState() => _Weight1State();
}

class _Weight1State extends State<Weight1> {
  TextEditingController stepcon = TextEditingController();
  TextEditingController notescon = TextEditingController();
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
        title: Text('Weight'),
        backgroundColor: Color(0xFF0277BD),
        actions: <Widget>[
          // ignore: missing_required_param
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WEIGHT();
              }));
            },
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
            shape: CircleBorder(side: BorderSide(color: Color(0xFF0277BD))),
          ),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.weight,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: TextField(
                        controller: stepcon,
                        decoration: InputDecoration(
                          hintText: 'Weight',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.black,
                        ))),
                Text(
                  'kg',
                  style: TextStyle(color: Colors.black, fontSize: 23),
                )
              ],
            ),
          ),
          SizedBox(
            height: 27.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.clock,
                  size: 30,
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
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Icon(
                  Icons.notes_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 27,
                ),
                Expanded(
                    child: TextField(
                        controller: notescon,
                        decoration: InputDecoration(
                          hintText: 'Notes ',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.black,
                        ))),
              ],
            ),
          )
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
