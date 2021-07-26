import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Column(
              children: [],
            )));
  }
}
