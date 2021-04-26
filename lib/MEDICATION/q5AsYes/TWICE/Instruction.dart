import 'package:flutter/material.dart';

class INST extends StatefulWidget {
  @override
  _INSTState createState() => _INSTState();
}

class _INSTState extends State<INST> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Material(
        color: Color(0xFF0277BD),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
                height: size.height,
                child: Stack(children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      margin: EdgeInsets.only(top: size.height * 0.39),
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24))),
                      child: ListView(
                        children: ListTile.divideTiles(
                          context: context,
                          tiles: [
                            ListTile(
                              title: Text(
                                'Before eating',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                            ),
                            ListTile(
                                title: Text('After eating',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                                onTap: () {}),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 30),
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
                                          /*        Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Que7();
                                  }));*/
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.notes_sharp,
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      'Almost done.Would you like to:',
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
                      ))
                ]))
          ]),
        ),
      ),
    );
  }
}
