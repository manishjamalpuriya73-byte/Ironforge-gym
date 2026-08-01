# IronForge Gym - Premium Fitness App

<div align="center">
  <h3>Transform Your Fitness Journey 💪</h3>
  <p>A modern, feature-rich gym workout application for Android and iOS</p>
</div>

---

## 🏋️ Overview

IronForge Gym is a comprehensive fitness application built with Flutter, offering professional-grade workout guidance, progress tracking, and personalized fitness plans. Whether you're a beginner or advanced athlete, IronForge provides everything you need to achieve your fitness goals.

## ✨ Key Features

### 🏋️ Workout Management
- **12 Body Part Categories**: Chest, Back, Shoulders, Biceps, Triceps, Forearms, Legs, Calves, Abs, Cardio, Full Body, Stretching & Warm-up
- **150+ Professional Exercises**: Complete with HD images/animations and detailed instructions
- **8 Comprehensive Workout Plans**:
  - Beginner (4 weeks)
  - Intermediate (8 weeks)
  - Advanced (12 weeks)
  - Fat Loss
  - Muscle Gain
  - Strength Training
  - Home Workout (No Equipment)
  - Gym Workout

### 📚 Exercise Information
Each exercise includes:
- ✅ HD images or animations
- ✅ Step-by-step instructions
- ✅ Starting position & correct form
- ✅ Breathing technique
- ✅ Common mistakes to avoid
- ✅ Target muscles visualization
- ✅ Difficulty level (Beginner/Intermediate/Advanced)
- ✅ Recommended sets, reps, and rest time
- ✅ Safety tips & precautions

### 📊 Progress Tracking
- Weight tracking with detailed charts
- Body measurements (chest, waist, arms, legs, thighs)
- Complete workout history
- Calories burned tracking
- Workout streak counter
- Personal records (PRs) management
- Weekly & monthly statistics

### 🥗 Health & Wellness
- **BMI Calculator**: Instant body mass index calculation
- **Calorie Calculator**: Daily calorie requirements
- **Water Intake Tracker**: Stay hydrated with daily goals
- **Diet Section**:
  - Muscle gain diet plans
  - Fat loss diet plans
  - High protein foods database
  - Nutrient tracking

### 👤 User Profile
- Personal health data (Age, Height, Weight, Fitness Goal)
- Multiple fitness goal support
- Profile customization
- Achievement tracking

### 📱 Dashboard
- Today's workout overview
- Calorie summary
- Progress visualization charts
- Weekly statistics
- Quick access to favorite workouts

### ⏱️ Timers & Reminders
- Rest timer between sets
- Workout timer
- Daily workout reminders
- Notification customization

### 🎨 User Experience
- Beautiful Material Design 3 UI
- Smooth animations and transitions
- Dark & Light mode themes
- Offline support for all exercises
- Responsive design for all screen sizes
- Exercise search and filtering
- Favorite workouts management

## 🛠️ Technical Stack

### Frontend
- **Framework**: Flutter 3.0+
- **Language**: Dart
- **UI Design System**: Material Design 3
- **State Management**: Riverpod 2.4

### Backend & Services
- **Authentication**: Firebase Authentication
- **Database**: Cloud Firestore
- **Cloud Storage**: Firebase Storage
- **Analytics**: Firebase Analytics

### Local Storage
- **Hive**: Local database for offline support
- **SharedPreferences**: App preferences
- **SQLite**: Structured data storage

### Libraries & Packages
- **Charts**: fl_chart
- **Animations**: lottie, flutter_staggered_animations
- **Networking**: Dio, HTTP
- **Image Handling**: cached_network_image, image_picker
- **Video**: video_player
- **Notifications**: flutter_local_notifications
- **QR Code**: qr_flutter
- **Health Integration**: health package

## 📱 Platform Support

- **Android**: 6.0+ (API Level 21+)
- **iOS**: 11.0+
- **Responsive**: Tablets and phones

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart 3.0+
- Android Studio / Xcode
- Firebase project

### Installation

1. **Clone the repository**:
```bash
git clone https://github.com/manishjamalpuriya73-byte/ironforge-gym.git
cd ironforge-gym
```

2. **Install dependencies**:
```bash
flutter pub get
```

3. **Configure Firebase**:
   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com)
   - Download `google-services.json` (Android) and place in `android/app/`
   - Download `GoogleService-Info.plist` (iOS) and place in `ios/Runner/`
   - Update `lib/firebase_options.dart` with your Firebase credentials

4. **Run the app**:
```bash
flutter run
```

## 📂 Project Structure

```
lib/
├── main.dart                           # App entry point
├── firebase_options.dart               # Firebase configuration
├── core/
│   ├── constants/
│   │   ├── app_constants.dart
│   │   ├── colors.dart
│   │   ├── strings.dart
│   │   └── assets.dart
│   ├── theme/
│   │   ├── app_theme.dart
│   │   ├── app_colors.dart
│   │   └── text_styles.dart
│   ├── utils/
│   │   ├── validators.dart
│   │   ├── formatters.dart
│   │   └── extensions.dart
│   └── widgets/
│       ├── custom_app_bar.dart
│       ├── custom_button.dart
│       ├── loading_widget.dart
│       └── error_widget.dart
├── data/
│   ├── models/
│   │   ├── user_model.dart
│   │   ├── exercise_model.dart
│   │   ├── workout_model.dart
│   │   ├── progress_model.dart
│   │   └── diet_model.dart
│   ├── services/
│   │   ├── firebase_service.dart
│   │   ├── auth_service.dart
│   │   ├── firestore_service.dart
│   │   └── local_storage_service.dart
│   ├── repositories/
│   │   ├── auth_repository.dart
│   │   ├── user_repository.dart
│   │   ├── exercise_repository.dart
│   │   ├── workout_repository.dart
│   │   └── progress_repository.dart
│   └── sources/
│       ├── remote_data_source.dart
│       └── local_data_source.dart
├── domain/
│   ├── entities/
│   │   ├── user_entity.dart
│   │   ├── exercise_entity.dart
│   │   └── workout_entity.dart
│   └── use_cases/
│       ├── auth_use_cases.dart
│       ├── workout_use_cases.dart
│       └── progress_use_cases.dart
└── presentation/
    ├── screens/
    │   ├── auth/
    │   │   ├── login_screen.dart
    │   │   ├── signup_screen.dart
    │   │   └── splash_screen.dart
    │   ├── home/
    │   │   ├── home_screen.dart
    │   │   ├── dashboard_screen.dart
    │   │   └── home_controller.dart
    │   ├── workout/
    │   │   ├── workout_list_screen.dart
    │   │   ├── workout_detail_screen.dart
    │   │   ├── exercise_detail_screen.dart
    │   │   └── active_workout_screen.dart
    │   ├── progress/
    │   │   ├── progress_screen.dart
    │   │   ├── body_measurements_screen.dart
    │   │   ├── weight_tracker_screen.dart
    │   │   └── stats_screen.dart
    │   ├── diet/
    │   │   ├── diet_screen.dart
    │   │   ├── calorie_calculator_screen.dart
    │   │   └── diet_plan_screen.dart
    │   ├── profile/
    │   │   ├── profile_screen.dart
    │   │   ├── edit_profile_screen.dart
    │   │   ├── settings_screen.dart
    │   │   └── about_screen.dart
    │   └── common/
    │       ├── search_screen.dart
    │       └── favorites_screen.dart
    ├── widgets/
    │   ├── exercise_card.dart
    │   ├── workout_card.dart
    │   ├── progress_chart.dart
    │   ├── timer_widget.dart
    │   ├── bottom_nav_bar.dart
    │   └── custom_widgets.dart
    ├── providers/
    │   ├── auth_provider.dart
    │   ├── user_provider.dart
    │   ├── exercise_provider.dart
    │   ├── workout_provider.dart
    │   ├── progress_provider.dart
    │   └── theme_provider.dart
    └── controllers/
        ├── auth_controller.dart
        ├── workout_controller.dart
        └── progress_controller.dart

assets/
├── images/
│   ├── exercises/
│   ├── workouts/
│   └── ui/
├── icons/
├── animations/
├── fonts/
└── json/
    └── exercises.json
```

## 🔐 Security

- Firebase Authentication with email/password, Google, and Apple Sign-In
- Firestore security rules for data protection
- Encrypted local storage
- Secure password handling
- HTTPS only for API calls

## 📝 License

MIT License - See LICENSE file for details

## 👨‍💻 Author

**Manish Jamalpuriya**
- GitHub: [@manishjamalpuriya73-byte](https://github.com/manishjamalpuriya73-byte)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Support

For support, open an issue in the repository.

---

**IronForge Gym** - Transform Your Fitness Journey 💪
