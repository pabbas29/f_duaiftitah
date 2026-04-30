import 'package:flutter/material.dart';
import 'home.dart';

class CoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Image Placeholder
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                      width: 2,
                    ),
                  ),
                  child: Icon(
                    Icons.image,
                    size: 80,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 40),
                // Dua Name Placeholder
                Text(
                  'Dua Iftitah',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'دعاء الافتتاح',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                SizedBox(height: 60),
                // Start Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.orange[800],
                    padding: EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Start Reading',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
