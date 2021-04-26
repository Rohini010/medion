import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:medion/MEDICATION/q5AsYes/TWICE/third.dart';

class Doctor2 extends StatelessWidget {
  final addname;
  final addAddress;
  Doctor2({@required this.addname, this.addAddress});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'name:$addname',
        ),
        SizedBox(height: 120),
        Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(width: 20),
            Text('$addAddress'),
          ],
        ),
      ],
    );
  }
}
