import 'package:flutter/material.dart';
import 'package:myapp/api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Home',
      home: Scaffold(
        body: Api(),
      ),
    );
  }
}
