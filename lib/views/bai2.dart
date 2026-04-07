import 'package:flutter/material.dart';

class Bai2HomeView extends StatefulWidget {
  @override
  _Bai2HomeViewState createState() => _Bai2HomeViewState();
}

class _Bai2HomeViewState extends State<Bai2HomeView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  void _goToProfile() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(
        context,
        '/profile',
        arguments: _controller.text,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bai 2 Home')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Enter username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username cannot be empty';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _goToProfile,
                child: Text('Go to Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}