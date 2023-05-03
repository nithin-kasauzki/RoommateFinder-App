import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Do something when button 1 is pressed
              },
              child: Text('Button 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Do something when button 2 is pressed
              },
              child: Text('Button 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Do something when button 3 is pressed
              },
              child: Text('Button 3'),
            ),
          ],
        ),
      ),
    );
  }
}
