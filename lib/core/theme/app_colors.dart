import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFFFF6B35);
  static const Color primaryLight = Color(0xFFFF8A52);
  static const Color primaryDark = Color(0xFFE55100);
  static const Color primaryVariant = Color(0xFFFF8A3D);

  // Secondary Colors
  static const Color secondary = Color(0xFF004E89);
  static const Color secondaryLight = Color(0xFF0077B6);
  static const Color secondaryDark = Color(0xFF00A8E8);
  static const Color secondaryVariant = Color(0xFF0369A1);

  // Accent Colors
  static const Color accent = Color(0xFF37B7C3);
  static const Color accentLight = Color(0xFF4DD0E1);
  static const Color accentDark = Color(0xFF00838F);

  // Light Theme Colors
  static const Color lightBackground = Color(0xFFF5F5F5);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFFAFAFA);

  // Dark Theme Colors
  static const Color darkBackground = Color(0xFF0A0E27);
  static const Color darkSurface = Color(0xFF1A1F3A);
  static const Color darkSurfaceVariant = Color(0xFF262D47);

  // Text Colors - Light Theme
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textTertiary = Color(0xFF999999);
  static const Color textHint = Color(0xFFBBBBBB);

  // Text Colors - Dark Theme
  static const Color textDarkPrimary = Color(0xFFFFFFFF);
  static const Color textDarkSecondary = Color(0xFFB0B0B0);
  static const Color textDarkTertiary = Color(0xFF808080);
  static const Color textDarkHint = Color(0xFF606060);

  // Border Colors
  static const Color border = Color(0xFFE0E0E0);
  static const Color borderDark = Color(0xFF404040);
  static const Color borderLight = Color(0xFFF0F0F0);

  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color successLight = Color(0xFF81C784);
  static const Color successDark = Color(0xFF2E7D32);

  static const Color warning = Color(0xFFFFC107);
  static const Color warningLight = Color(0xFFFFD54F);
  static const Color warningDark = Color(0xFFFFA000);

  static const Color error = Color(0xFFF44336);
  static const Color errorLight = Color(0xFFEF5350);
  static const Color errorDark = Color(0xFFD32F2F);

  static const Color info = Color(0xFF2196F3);
  static const Color infoLight = Color(0xFF64B5F6);
  static const Color infoDark = Color(0xFF1565C0);

  // Gradient Colors
  static const List<Color> primaryGradient = [
    Color(0xFFFF6B35),
    Color(0xFFFF8A3D),
  ];

  static const List<Color> secondaryGradient = [
    Color(0xFF004E89),
    Color(0xFF0077B6),
  ];

  static const List<Color> accentGradient = [
    Color(0xFF37B7C3),
    Color(0xFF4DD0E1),
  ];

  // Transparent Colors
  static Color blackOverlay10 = Colors.black.withOpacity(0.1);
  static Color blackOverlay20 = Colors.black.withOpacity(0.2);
  static Color blackOverlay30 = Colors.black.withOpacity(0.3);
  static Color blackOverlay40 = Colors.black.withOpacity(0.4);
  static Color blackOverlay50 = Colors.black.withOpacity(0.5);

  static Color whiteOverlay10 = Colors.white.withOpacity(0.1);
  static Color whiteOverlay20 = Colors.white.withOpacity(0.2);
  static Color whiteOverlay30 = Colors.white.withOpacity(0.3);
  static Color whiteOverlay40 = Colors.white.withOpacity(0.4);
  static Color whiteOverlay50 = Colors.white.withOpacity(0.5);

  // Special Colors
  static const Color shimmer = Color(0xFFE0E0E0);
  static const Color overlay = Color(0x80000000);
  static const Color skeleton = Color(0xFFF0F0F0);

  // Muscle Group Colors
  static const Color chestColor = Color(0xFFFF6B35);
  static const Color backColor = Color(0xFF004E89);
  static const Color shoulderColor = Color(0xFF37B7C3);
  static const Color bicepColor = Color(0xFFFF8A3D);
  static const Color tricepColor = Color(0xFF0077B6);
  static const Color forearmColor = Color(0xFF4DD0E1);
  static const Color legColor = Color(0xFFE55100);
  static const Color calfColor = Color(0xFF00A8E8);
  static const Color absColor = Color(0xFF00838F);
  static const Color cardioColor = Color(0xFFFFC107);
  static const Color fullBodyColor = Color(0xFF9C27B0);
  static const Color stretchColor = Color(0xFF4CAF50);
}
