import 'package:flutter/material.dart';
import 'MyAcc.dart';
import 'match.dart';
import 'home.dart';
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
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAccount(),
                  ),
                );
              },
              icon: Icon(Icons.account_circle),
              label: Text('My Account'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Do something when button 2 is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MatchesScreen(),
                  ),
                );
              },
              icon: Icon(Icons.people_alt_rounded),
              label: Text('View Matches'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Do something when button 3 is pressed
                Navigator.pushReplacement(context, MaterialPageRoute (
                  builder: (BuildContext context) =>  HomePage(),
                ),);
              },
              icon: Icon(Icons.exit_to_app),
              label: Text('Sign Out'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
