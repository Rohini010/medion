// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';
// ignore: unused_import
import 'dart:ffi';

// ignore: unused_import
//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:medion/HOME/MORE.dart';
import 'package:medion/HOME/hpage.dart';
import 'package:medion/MEDICATION/new1.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HPVieww(),
    Que1(),
    More(),
  ];
  //CalendarController _controller;

  @override
  /*void initState() {
    super.initState();
//    _controller = CalendarController();
  }*/

  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String name = '';
    // ignore: unused_local_variable
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //iconSize: 30.0,
        selectedIconTheme: IconThemeData(
          color: const Color(0xFF0277BD),
        ),
        unselectedIconTheme: IconThemeData(color: Colors.black12),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.pills),
            // ignore: deprecated_member_use
            title: Text(
              'Medication',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            // ignore: deprecated_member_use
            title: Text(
              'More',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
