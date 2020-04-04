import 'package:flutter/material.dart';

class DuaCard extends StatefulWidget {
  @override
  _DuaCardState createState() => _DuaCardState();
}

class _DuaCardState extends State<DuaCard> {

  List<String> ayats = [
    'Bismillahirahma nirrahim',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.transparent,
        child: Container(
          width: 400,
          height: 300,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Column(
                children: <Widget>[
                  Text(
                      'بِسْمِ اللّهِ الرَّحْمَنِ الرَّ حِيْمِ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.orange[300],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                    child: Text(
                      'Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.orange[300],
                        fontSize: 24,
                      )
                    ),
                  )
                ],
              ),
          )
        )
      )
    );
  }
}
