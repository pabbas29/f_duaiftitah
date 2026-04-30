class DuaVerse {
  final String arabic;
  final String latin;
  final Map<String, String> translations;

  DuaVerse({
    required this.arabic,
    required this.latin,
    required this.translations,
  });

  String getTranslation(String langCode) {
    return translations[langCode] ?? translations['en'] ?? '';
  }
}

class DuaIftitahData {
  static final Map<String, String> supportedLanguages = {
    'en': 'EN',
    'id': 'ID',
  };

  static List<DuaVerse> get verses => [
        DuaVerse(
          arabic: 'بِسْمِ اللّهِ الرَّحْمَنِ الرَّحِيْمِ',
          latin: 'Bismillahir-rahmanir-rahim',
          translations: {
            'en': 'In the name of Allah, the Most Gracious, the Most Merciful',
            'id': 'Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang',
          },
        ),
        DuaVerse(
          arabic: 'اَلْحَمْدُ لِلّهِ رَبِّ الْعَالَمِيْنَ',
          latin: 'Alhamdulillah rabbil \'alamin',
          translations: {
            'en': 'All praise is due to Allah, Lord of the Worlds',
            'id': 'Segala puji bagi Allah, Tuhan semesta alam',
          },
        ),
        DuaVerse(
          arabic: 'الرَّحْمَنِ الرَّحِيْمِ',
          latin: 'Ar-rahmanir-rahim',
          translations: {
            'en': 'The Most Gracious, the Most Merciful',
            'id': 'Yang Maha Pengasih lagi Maha Penyayang',
          },
        ),
        DuaVerse(
          arabic: 'مَالِكِ يَوْمِ الدِّيْنِ',
          latin: 'Maliki yaumid-din',
          translations: {
            'en': 'Master of the Day of Judgment',
            'id': 'Yang menguasai hari pembalasan',
          },
        ),
        DuaVerse(
          arabic: 'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِيْنُ',
          latin: 'Iyyaka na\'budu wa iyyaka nasta\'in',
          translations: {
            'en': 'You alone we worship, and You alone we ask for help',
            'id': 'Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami mohon pertolongan',
          },
        ),
        DuaVerse(
          arabic: 'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيْمَ',
          latin: 'Ihdinas-shiratal-mustaqim',
          translations: {
            'en': 'Guide us to the straight path',
            'id': 'Tunjukilah kami jalan yang lurus',
          },
        ),
        DuaVerse(
          arabic: 'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ',
          latin: 'Shiratal-ladhina an\'amta \'alaihim',
          translations: {
            'en': 'The path of those who have received Your grace',
            'id': '(Yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya',
          },
        ),
        DuaVerse(
          arabic: 'غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
          latin: 'Ghairil-maghdubi \'alaihim wa lad-dallin',
          translations: {
            'en': 'Not the path of those who have incurred Your wrath, nor of those who have gone astray',
            'id': 'Bukan (jalan) mereka yang dimurkai dan bukan (pula jalan) mereka yang sesat',
          },
        ),
      ];
}
