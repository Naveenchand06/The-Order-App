import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:hello_world/home_page.dart';
class Stationery extends StatefulWidget {
  const Stationery({ Key? key }) : super(key: key);

  @override
  State<Stationery> createState() => _StationeryState();
}

class _StationeryState extends State<Stationery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stationery'),
        backgroundColor: Colors.teal,
      ),
      body: Container(),
    );
  }
}