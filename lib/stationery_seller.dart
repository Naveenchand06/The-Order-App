import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:hello_world/home_page.dart';
class StationerySeller extends StatefulWidget {
  const StationerySeller({ Key? key }) : super(key: key);

  @override
  State<StationerySeller> createState() => _StationerySellerState();
}

class _StationerySellerState extends State<StationerySeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Stationery Seller'),
        backgroundColor: Colors.teal,
      ),
      body: Container(),
      
    );
  }
}