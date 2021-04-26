import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medion/MEDICATION/que5.dart';
import 'package:medion/MEDICATION/que62.dart';

class Que6Ans extends StatefulWidget {
  @override
  _Que6AnsState createState() => _Que6AnsState();
}

class _Que6AnsState extends State<Que6Ans> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
 return   
      Scaffold(
              body: Material(color: Color(0xFF0277BD),
                              child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      SizedBox(                        height: size.height,
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
                                child: ListView(
                                  children: ListTile.divideTiles(
                                    context: context,
                                    tiles: [
                                      ListTile(
                                        title: Text(
                                          'Once week',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),  onTap: () {  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Que62();
                                      }));},
                                      ),
                                      ListTile(
                                        title: Text('Every 2 days',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black)),
                                     onTap: () {  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Que62();
                                      }));},   ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Text('2 days a week',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black)),
                                            //Icon(Icons.airplanemode_off_outlined),
                                          ],
                                        ),
                                          onTap: () {  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Que62();
                                      }));},
                                      ),
                                      
                                     
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Text('2 days a week',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black)),
                                            //Icon(Icons.airplanemode_off_outlined),
                                          ],
                                        ),
                                          onTap: () {  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Que62();
                                      }));},
                                      ),
                                           ListTile(
                                        title: Row(
                                          children: [
                                            Text('3 days a week',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black)),
                                            //Icon(Icons.airplanemode_off_outlined),
                                          ],
                                        ),
                                          onTap: () {  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Que62();
                                      }));},
                                      ),
                                       ListTile(
                                        title: Row(
                                          children: [
                                            Text('Every 28 days',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black)),
                                            //Icon(Icons.airplanemode_off_outlined),
                                          ],
                                        ),
                                          onTap: () {  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Que62();
                                      }));},
                                      ),
                                      ListTile(
                                        title: Row(
                                          children: [
                                            Text('Only as needed',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black)),
                                            //Icon(Icons.airplanemode_off_outlined),
                                          ],
                                        ),
                                          onTap: () {  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Que62();
                                      }));},
                                      ),
                                    ],
                                  ).toList(),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                                                                  icon: Icon(Icons.arrow_back,
                                                size: 36.0, color: Colors.white),onPressed: () {
                                                  Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Que5();
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
                                      Container(padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(FontAwesomeIcons.calendarAlt,
                                              color: Colors.black87,
                                              size: 43.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Container(padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'How often do you take it?',
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
}

