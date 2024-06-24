import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout Page'),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Text(
          'This is the Logout page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
