class DuaVerse {
  final String arabic;
  final String latin;
  final String translation;

  DuaVerse({
    required this.arabic,
    required this.latin,
    required this.translation,
  });
}

class DuaIftitahData {
  static List<DuaVerse> get verses => [
        DuaVerse(
          arabic: 'بِسْمِ اللّهِ الرَّحْمَنِ الرَّحِيْمِ',
          latin: 'Bismillahir-rahmanir-rahim',
          translation: 'Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang',
        ),
        DuaVerse(
          arabic: 'اَلْحَمْدُ لِلّهِ رَبِّ الْعَالَمِيْنَ',
          latin: 'Alhamdulillah rabbil \'alamin',
          translation: 'Segala puji bagi Allah, Tuhan semesta alam',
        ),
        DuaVerse(
          arabic: 'الرَّحْمَنِ الرَّحِيْمِ',
          latin: 'Ar-rahmanir-rahim',
          translation: 'Yang Maha Pengasih lagi Maha Penyayang',
        ),
        DuaVerse(
          arabic: 'مَالِكِ يَوْمِ الدِّيْنِ',
          latin: 'Maliki yaumid-din',
          translation: 'Yang menguasai hari pembalasan',
        ),
        DuaVerse(
          arabic: 'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِيْنُ',
          latin: 'Iyyaka na\'budu wa iyyaka nasta\'in',
          translation: 'Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami mohon pertolongan',
        ),
        DuaVerse(
          arabic: 'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيْمَ',
          latin: 'Ihdinas-shiratal-mustaqim',
          translation: 'Tunjukilah kami jalan yang lurus',
        ),
        DuaVerse(
          arabic: 'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ',
          latin: 'Shiratal-ladhina an\'amta \'alaihim',
          translation: '(Yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya',
        ),
        DuaVerse(
          arabic: 'غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
          latin: 'Ghairil-maghdubi \'alaihim wa lad-dallin',
          translation: 'Bukan (jalan) mereka yang dimurkai dan bukan (pula jalan) mereka yang sesat',
        ),
      ];
}
