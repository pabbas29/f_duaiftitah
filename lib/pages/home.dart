import 'package:dua_iftitah/components/DuaCarousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              child: DuaCarousel(),
            ),
          )
        ]
      )
    );
  }
}



