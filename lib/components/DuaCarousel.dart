import 'package:flutter/material.dart';

class DuaCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: PageView.builder(
            controller: PageController(viewportFraction: 1),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, itemIndex);
            },
      ),
    );
  }

  Widget _buildCarouselItem(BuildContext context, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
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
    );
  }
}
    