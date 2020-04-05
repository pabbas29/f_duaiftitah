import 'package:dua_iftitah/components/DuaCarousel.dart';
import 'package:dua_iftitah/components/duacard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image.asset('assets/background.jpg'),
            Center(
              child: DuaCarousel(),
            )
          ]
        )
      )
    );
  }
}



