import 'package:flutter/material.dart';

class status extends StatefulWidget {
  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child:
      Text("status",
      style: TextStyle(fontSize: 40.0)
      ,)
      ,),
    );
  }
}