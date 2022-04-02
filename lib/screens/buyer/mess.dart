import 'package:flutter/material.dart';
import 'package:hello_world/screens/buyer/home_page.dart';

class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _MessState();
}

class _MessState extends State<Mess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mess'),
        backgroundColor: Colors.teal,
      ),
      body: Container(),
    );
  }
}
