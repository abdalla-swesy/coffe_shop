# ☕ Coffee Shop App

A beautiful and modern Flutter mobile application for a coffee shop, featuring an intuitive user interface, dark/light theme support, and comprehensive coffee ordering functionality.

## 📱 Features

### Core Functionality

- **User Authentication**: Login screen with user authentication
- **Coffee Menu**: Browse different coffee types (Cappuccino, Macchiato, Latte, Americano)
- **Product Details**: Detailed view of each coffee item with descriptions and pricing
- **Order Management**: Add items to cart and manage orders
- **Location Services**: Location-based features with map integration
- **Theme Toggle**: Switch between light and dark themes with persistent settings

### User Experience

- **Responsive Design**: Optimized for various screen sizes
- **Smooth Animations**: Animated theme transitions and UI interactions
- **Search Functionality**: Search through coffee menu
- **Category Filtering**: Filter coffee by type
- **Persistent Storage**: Save user preferences and cart data

## 🛠️ Technical Stack

- **Framework**: Flutter 3.7.0+
- **State Management**: BLoC/Cubit pattern with flutter_bloc
- **Local Storage**: SharedPreferences for user settings and data persistence
- **UI Components**: Material Design with custom theming
- **Architecture**: Clean architecture with separation of concerns

## 📁 Project Structure

```
lib/
├── logic/
│   ├── cubit.dart          # Business logic and state management
│   └── state.dart          # Application state definitions
├── presentation/
│   ├── details.dart        # Coffee item details screen
│   ├── home.dart          # Main home screen with coffee grid
│   ├── login.dart         # User authentication screen
│   ├── mainscreen.dart    # Main navigation wrapper
│   ├── map.dart           # Location and map features
│   └── order.dart         # Order management screen
├── theme.dart             # App theming configuration
└── main.dart              # App entry point
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.7.0 or higher
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd coffe_shop
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Building for Production

**Android APK:**

```bash
flutter build apk --release
```

**iOS (requires macOS):**

```bash
flutter build ios --release
```

## 📦 Dependencies

### Main Dependencies

- `flutter_bloc: ^9.1.1` - State management
- `shared_preferences: ^2.5.3` - Local data persistence
- `cupertino_icons: ^1.0.8` - iOS-style icons
- `adaptive_action_sheet: ^2.0.4` - Platform-adaptive action sheets

### Dev Dependencies

- `flutter_test` - Testing framework
- `flutter_lints: ^5.0.0` - Linting rules

## 🎨 App Screens

1. **Login Screen**: User authentication and onboarding
2. **Home Screen**: Coffee menu with categories and search
3. **Details Screen**: Individual coffee item information
4. **Order Screen**: Cart management and checkout
5. **Map Screen**: Location services and store finder

## 🌙 Theme Support

The app supports both light and dark themes with:

- Persistent theme selection
- Smooth animated transitions
- Consistent color schemes across all screens
- Theme toggle accessible from the bottom navigation

## 🔧 Configuration

### Assets

Coffee images and icons are stored in `assets/images/`. Make sure all required assets are present before building.

### Theme Customization

Modify `lib/theme.dart` to customize:

- Color schemes
- Typography
- Component styling
- Animation durations

## 🧪 Testing

Run tests using:

```bash
flutter test
```

## 📱 Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web (with responsive design)
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📞 Support

For support and questions, please open an issue in the repository.

---

**Made with ❤️ using Flutter**
