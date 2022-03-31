import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:hello_world/home_page.dart';
class Canteen extends StatefulWidget {
  const Canteen({ Key? key }) : super(key: key);

  @override
  State<Canteen> createState() => _CanteenState();
}

class _CanteenState extends State<Canteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Canteen'),
        backgroundColor: Colors.teal,
      ),
      body: Container(),
    ); 
  }
}