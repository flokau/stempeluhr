import 'package:flutter/material.dart';

class TrackTime extends StatefulWidget {
  const TrackTime({super.key});

  @override
  _TrackTimeState createState() => _TrackTimeState();
}

class _TrackTimeState extends State<TrackTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Icon(
        Icons.play_circle_outline,
        color: Colors.green,
        size: 100.0,
      ),
    );
  }
}
