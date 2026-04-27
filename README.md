# Dua Iftitah - Swipe Edition

A Flutter application for reading Dua Iftitah verses with intuitive swipe navigation.

## 🌟 New Features (v1.1.0)

- **Swipe Navigation**: Swipe left/right to navigate between verses
- **Page Indicators**: Visual dots show current position
- **Enhanced Card Design**: Beautiful card layout with Arabic, Latin, and translation
- **Amiri Font**: Professional Arabic typography for better readability

## 📱 How to Use

1. **Swipe Left**: Move to the next verse
2. **Swipe Right**: Move to the previous verse
3. **Tap on dots**: Navigate to specific verse (coming soon)

## 🎨 Features

- **8 Verses**: Complete Dua Iftitah content
- **Three Languages**: Arabic script, Latin transliteration, and Indonesian translation
- **Responsive Design**: Adapts to different screen sizes
- **Beautiful UI**: Orange theme with card-based layout

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>= 2.0.0)
- Dart SDK (>= 2.12.0)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/pabbas29/f_duaiftitah.git
cd f_duaiftitah
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Build for Production

```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## 📁 Project Structure

```
lib/
├── main.dart              # App entry point
├── models/
│   └── dua_verse.dart     # Data model for verses
├── components/
│   ├── DuaCarousel.dart   # Swipeable carousel component
│   └── duacard.dart       # Individual verse card
└── pages/
    ├── home.dart          # Home page
    └── cover.dart         # Cover page
assets/
└── background.jpg         # Background image
fonts/
├── Amiri-Regular.ttf      # Arabic font (regular)
└── Amiri-Bold.ttf         # Arabic font (bold)
```

## 🛠️ Development

### Creating a New Verse

Add new verses to `lib/models/dua_verse.dart`:

```dart
DuaVerse(
  arabic: 'Your Arabic text',
  latin: 'Your Latin transliteration',
  translation: 'Your translation',
),
```

### Branch Strategy

- `main`: Production-ready code
- `dev`: Development branch for new features

## 📝 Version History

### v1.1.0 (Current)
- ✅ Added swipe navigation
- ✅ Page indicators
- ✅ Enhanced card design
- ✅ Amiri font integration
- ✅ 8 complete verses

### v1.0.0
- Initial release
- Basic carousel display

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License.

## 👨‍💻 Author

**pabbas29**

## 🙏 Acknowledgments

- Amiri Font: [Alif Type](https://github.com/aliftype/amiri)
- Flutter Community
- Background image from assets

---

**Happy Reading! 📖✨**
