import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'tracktime.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stempeluhr(),
        ),
      ),
    ),
  );
}

class Stempeluhr extends StatefulWidget {
  @override
  _StempeluhrState createState() => _StempeluhrState();
}

class _StempeluhrState extends State<Stempeluhr> {
  String _now;

  @override
  void initState() {
    _getCurrentTime();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _now,
                  style: TextStyle(fontSize: 250),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.orange,
                  height: 70.0,
                  width: 70.0,
                ),
                Expanded(
                  child: TrackTime(),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  color: Colors.purple,
                  height: 100.0,
                  width: 100.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _getCurrentTime() {
    setState(() {
      var now = new DateTime.now();
      var formatter = new DateFormat('HH:mm:ss');
      _now = formatter.format(now);
    });
  }
}
