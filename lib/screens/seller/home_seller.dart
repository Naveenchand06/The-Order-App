import 'package:flutter/material.dart';
import 'package:hello_world/screens/buyer/canteen.dart';
import 'package:hello_world/screens/seller/canteen_seller.dart';
import 'package:hello_world/screens/buyer/mess.dart';
import 'package:hello_world/screens/seller/mess_seller.dart';
import 'package:hello_world/screens/signup_screen.dart';
import 'package:hello_world/screens/buyer/stationery.dart';
import 'package:hello_world/screens/seller/stationery_seller.dart';

class HomeSeller extends StatefulWidget {
  const HomeSeller({Key? key}) : super(key: key);

  @override
  State<HomeSeller> createState() => _HomeSellerState();
}

class _HomeSellerState extends State<HomeSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller Mart'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 0.0)),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CanteenSeller(),
                  ),
                );
              },
              child: Text(
                "Canteen Seller",
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MessSeller(),
                  ),
                );
              },
              child: Text(
                "Mess Seller",
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              //InputBorder.none,
            ),
            SizedBox(
              height: 10.0,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => StationerySeller(),
                  ),
                );
              },
              child: Text(
                "Stationery Seller",
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              //InputBorder.none,
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
