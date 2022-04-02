import 'package:flutter/material.dart';
import 'package:hello_world/screens/buyer/home_page.dart';

class CanteenSeller extends StatefulWidget {
  const CanteenSeller({Key? key}) : super(key: key);

  @override
  State<CanteenSeller> createState() => _CanteenSellerState();
}

class _CanteenSellerState extends State<CanteenSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Canteen Seller'),
        backgroundColor: Colors.teal,
      ),
      body: Container(),
    );
  }
}
