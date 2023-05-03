import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _rollNumController = TextEditingController();
  final TextEditingController _deptController = TextEditingController();
  String _genderValue = 'male';
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Roll Number',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _rollNumController,
                decoration: InputDecoration(
                  hintText: 'Enter your roll number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your roll number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Department',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _deptController,
                decoration: InputDecoration(
                  hintText: 'Enter your department',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your department';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Gender',
                style: TextStyle(fontSize: 18.0),
              ),
              DropdownButtonFormField<String>(
                value: _genderValue,
                items: [
                  DropdownMenuItem(
                    child: Text('Male'),
                    value: 'male',
                  ),
                  DropdownMenuItem(
                    child: Text('Female'),
                    value: 'female',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _genderValue = value!;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Select your gender',
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Email',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                    // Do registration logic here
                  }
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
