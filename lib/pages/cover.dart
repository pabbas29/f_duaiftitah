import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: SafeArea(
        child: Image.asset('assets/background.jpg')
      )
    );
  }
}

