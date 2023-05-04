import 'package:flutter/material.dart';

class MatchesScreen extends StatefulWidget {
  @override
  _MatchesScreenState createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  List<Map<String, String>> _matches = [    {'name': 'Peter', 'email': 'peter@example.com'},    {'name': 'John', 'email': 'john@example.com'},    {'name': 'Varun', 'email': 'vkb@example.com'},    {'name': 'aditya', 'email': 'aadi@example.com'},  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matches'),
      ),
      body: ListView.builder(
        itemCount: _matches.length,
        itemBuilder: (BuildContext context, int index) {
          final match = _matches[index];
          return ListTile(
            title: Text(match['name']!),
            subtitle: Text(match['email']!),
            leading: CircleAvatar(
              child: Text(match['name']![0]),
            ),
          );
        },
      ),
    );
  }
}
