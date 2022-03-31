import 'package:flutter/material.dart';
import 'package:hello_world/canteen.dart';
import 'package:hello_world/mess.dart';
import 'package:hello_world/signup_screen.dart';
import 'package:hello_world/stationery.dart';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Mart"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(10.0,60.0,0.0,0.0)),
            OutlinedButton(
              onPressed: (){
                Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Canteen(),
                        ),
                      );
              }, 
              child: Text("Canteen",
              style: TextStyle(
                color: Colors.teal,
              ),
              ),
            ),
            SizedBox(height: 10.0,),
            OutlinedButton(
              onPressed: (){
                Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Mess(),
                        ),
                      );
              }, 
              child: Text("Mess",
              style: TextStyle(
                color: Colors.teal,
              ),
              ),
              //InputBorder.none,
            ),
            SizedBox(height: 10.0,),
            OutlinedButton(
              onPressed: (){
                Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Stationery(),
                        ),
                      );
              }, 
              child: Text("Stationery",
              style: TextStyle(
                color: Colors.teal,
              ),),
              //InputBorder.none,
              
            ),
            SizedBox(height: 10.0,)
          ],
        ),
      ),
    );
  }
}