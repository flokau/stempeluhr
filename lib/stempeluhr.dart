import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

import 'tracktime.dart';

class Stempeluhr extends StatefulWidget {
  const Stempeluhr({super.key});

  @override
  StempeluhrState createState() => StempeluhrState();
}

class StempeluhrState extends State<Stempeluhr> {
  late String _now;

  @override
  void initState() {
    _getCurrentTime();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _now,
                  style: const TextStyle(fontSize: 150),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
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
                const Expanded(
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
      );
  }

  void _getCurrentTime() {
    setState(() {
      var now = DateTime.now();
      var formatter = DateFormat('HH:mm:ss');
      _now = formatter.format(now);
    });
  }
}
