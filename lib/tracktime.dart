import 'package:flutter/material.dart';

class TrackTime extends StatefulWidget {
  const TrackTime({super.key});

  @override
  TrackTimeState createState() => TrackTimeState();
}

class TrackTimeState extends State<TrackTime> {
  @override
  Widget build(BuildContext context) {
    return const Icon(
        Icons.play_circle_outline,
        color: Colors.green,
        size: 100.0,
      );
  }
}
