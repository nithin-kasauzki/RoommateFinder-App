import 'package:flutter/material.dart';
import 'signup.dart';
import 'Login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Do something when button 1 is pressed
                Navigator.pushReplacement(context, MaterialPageRoute (
                  builder: (BuildContext context) =>  Login(),
                ),);
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Do something when button 2 is pressed
                Navigator.pushReplacement(context, MaterialPageRoute (
                  builder: (BuildContext context) =>  RegisterPage(),
                ),);
              },
              child: Text('SignUp'),
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
