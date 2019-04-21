import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(RandomColorApp());

class RandomColorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Color changer', home: ChangeableBackground());
  }
}

class ChangeableBackground extends StatefulWidget {
  @override
  State createState() {
    return ChangeableBackgroundState();
  }
}

class ChangeableBackgroundState extends State<ChangeableBackground> {
  Color currentColor = Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: changeColor,
        child: Scaffold(
            backgroundColor: currentColor,
            appBar: AppBar(
              title: Text('Color changer'),
            ),
            body: Center(child: Text('Hey there'))));
  }

  void changeColor() {
    setState(() {
      currentColor =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }
}
