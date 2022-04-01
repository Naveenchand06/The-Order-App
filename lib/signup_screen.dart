import 'package:flutter/material.dart';
import 'package:hello_world/Authentication/auth_email.dart';
import 'package:hello_world/login_screen.dart';
import 'package:hello_world/home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey.shade800,

      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Signup.',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This field should not be empty';
                          }
                          if (!(value.contains('@'))) {
                            return 'Please enter valid email';
                          }
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This field should not be empty';
                          }
                          if (value.length <= 4) {
                            return 'Password length must be greater than 4';
                          }
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      OutlinedButton(
                        child: Text('Signup'),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.teal,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('Elam crt ah iruku');
                          }
                          // AuthEmail.createNewUser(
                          //     email: _email, password: _password);
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => LoginPage(),
                          //   ),
                          // );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
