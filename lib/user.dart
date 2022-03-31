import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';
import 'package:hello_world/home_seller.dart';

class User extends StatefulWidget {
  const User({ Key? key }) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                  child: Text('Buyer'),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {
                     Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                  },
                ),
                SizedBox(width: 20.0,),
                OutlinedButton(
                  child: Text('Seller'),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {
                     Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomeSeller(),
                          ),
                        );
                  },
                )
          ],
        ),
      ),
    );
  }
}