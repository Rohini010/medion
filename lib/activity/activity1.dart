import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avtivity'),
        backgroundColor: Color(0xFF0277BD),
        leading: Icon(Icons.arrow_back),
      ),
      body: Stack(
        children: [
          ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Aerobics',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: FlatButton(
                  child: Row(
                    children: [
                      Text('Running',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: FlatButton(
                  child: Row(
                    children: [
                      Text('Cycling',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: FlatButton(
                  child: Row(
                    children: [
                      Text('Football',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: FlatButton(
                  child: Row(
                    children: [
                      Text('Meditation',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                    ],
                  ),
                  onPressed: () {
                    /*
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (contxt) => MEASWEIGHT()));*/
                  },
                ),
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: FlatButton(
                  child: Row(
                    children: [
                      Text('Phisiotheraphy',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              ListTile(
                // ignore: deprecated_member_use
                title: FlatButton(
                  child: Row(
                    children: [
                      Text('Badmniton',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ]).toList(),
          ),
        ],
      ),
    );
  }
}
