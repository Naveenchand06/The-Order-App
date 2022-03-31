import 'package:flutter/material.dart';
import 'package:hello_world/Authentication/auth_email.dart';
import 'package:hello_world/home_page.dart';
import 'package:hello_world/signup_screen.dart';
import 'package:hello_world/user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey.shade800,

      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter Email',
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.teal),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) {
                  _email = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: showPassword,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.teal),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye_outlined),
                    color: Colors.teal,
                    onPressed: () {
                      setState(() => showPassword = !showPassword);
                    },
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) {
                  _password = value;
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Create One.',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              OutlinedButton(
                child: Text('Login'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.teal,
                ),
                onPressed: () {
                  AuthEmail.loginWithEmail(email: _email, password: _password);

                  // if (_email.contains('@')) {
                  //   print(_email);
                  //   print(_password);
                  // }
                  // Toast.show(
                  //   'Successfully logged in',
                  //   context,
                  //   duration: 3,
                  // );
                  //  Navigator.of(context).push(
                  //       MaterialPageRoute(
                  //         builder: (context) => User(),
                  //       ),
                  //     );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
