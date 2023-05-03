import 'package:flutter/material.dart';

class InterestsPage extends StatefulWidget {
  @override
  _InterestsPageState createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  final List<String> _interests = [    'Technology',    'Sports',    'Music',    'Politics',    'Art',    'Food',    'Travel',    'Fashion',  ];

  List<String> _selectedInterests = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Interests'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select your interests',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _buildInterestButtons(),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _selectedInterests.isEmpty
                  ? null
                  : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InterestsResultPage(
                      selectedInterests: _selectedInterests,
                    ),
                  ),
                );
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildInterestButtons() {
    return _interests.map((interest) {
      final selected = _selectedInterests.contains(interest);
      return ElevatedButton(
        onPressed: () {
          setState(() {
            if (selected) {
              _selectedInterests.remove(interest);
            } else {
              _selectedInterests.add(interest);
            }
          });
        },
        style: ElevatedButton.styleFrom(
          primary: selected ? Colors.blue : Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        ),
        child: Text(interest),
      );
    }).toList();
  }
}
//{"basketball", "volleyball", "football", "swimming", "running", "cycling", "cricket", "chess", "Music", "Singing", "AI & machine learning", "web & app development", "computer programming", "Blockchain", "Video Games", "Traveling and exploring new places", "painting", "drawing", "photography", "graphic design", "Watching movies", "Watching series"}
class InterestsResultPage extends StatelessWidget {
  final List<String> selectedInterests;

  InterestsResultPage({required this.selectedInterests});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Interests'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You selected the following interests:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: selectedInterests.map((interest) {
                return Chip(
                  label: Text(interest),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
