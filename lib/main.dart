import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'stempeluhr.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stempeluhr(),
        ),
      ),
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}
