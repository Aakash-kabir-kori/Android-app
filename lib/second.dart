import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back Page'),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Text(
          'This is the Back page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
