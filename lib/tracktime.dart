import 'package:flutter/material.dart';

class TrackTime extends StatefulWidget {
  @override
  _TrackTimeState createState() => _TrackTimeState();
}

class _TrackTimeState extends State<TrackTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.play_circle_outline,
        color: Colors.black,
        size: 24.0,
      ),
    );
  }
}
