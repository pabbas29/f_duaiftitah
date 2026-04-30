import 'package:flutter/material.dart';
import '../models/dua_verse.dart';

class DuaCarousel extends StatefulWidget {
  final String selectedLanguage;
  final Function(String) onLanguageChanged;

  DuaCarousel({
    required this.selectedLanguage,
    required this.onLanguageChanged,
  });

  @override
  _DuaCarouselState createState() => _DuaCarouselState();
}

class _DuaCarouselState extends State<DuaCarousel> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final verses = DuaIftitahData.verses;

    return Container(
      height: 400,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: verses.length,
              itemBuilder: (BuildContext context, int itemIndex) {
                return _buildCarouselItem(context, verses[itemIndex]);
              },
            ),
          ),
          SizedBox(height: 20),
          _buildPageIndicator(verses.length),
          _buildLanguageSelector(),
        ],
      ),
    );
  }

  Widget _buildCarouselItem(BuildContext context, DuaVerse verse) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: Colors.white.withOpacity(0.9),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Verse ${_currentPage + 1} of ${DuaIftitahData.verses.length}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.orange[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                verse.arabic,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.orange[900],
                  fontFamily: 'Amiri', // You may want to add this font
                  height: 1.5,
                ),
              ),
              SizedBox(height: 30),
              Text(
                verse.latin,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange[800],
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.orange[300]),
              SizedBox(height: 10),
              Text(
                verse.getTranslation(widget.selectedLanguage),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.orange[900],
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageIndicator(int pageCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) => _buildDot(index),
      ),
    );
  }

  Widget _buildLanguageSelector() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: DuaIftitahData.supportedLanguages.entries.map((entry) {
          final langCode = entry.key;
          final label = entry.value;
          final isSelected = widget.selectedLanguage == langCode;
          return GestureDetector(
            onTap: () => widget.onLanguageChanged(langCode),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? Colors.orange[800] : Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? Colors.orange[800]! : Colors.orange[300]!,
                  width: 2,
                ),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.orange[800],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: _currentPage == index ? 12 : 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index
            ? Colors.orange[800]
            : Colors.orange[300],
      ),
    );
  }
}
