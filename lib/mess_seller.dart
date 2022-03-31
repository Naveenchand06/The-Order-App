import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class MessSeller extends StatefulWidget {
  const MessSeller({Key? key}) : super(key: key);

  @override
  State<MessSeller> createState() => _MessSellerState();
}

class _MessSellerState extends State<MessSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mess_Seller'),
        backgroundColor: Colors.teal,
      ),
      body: Container(),
    );
  }
}
