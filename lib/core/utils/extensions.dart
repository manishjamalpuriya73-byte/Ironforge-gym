extension StringExtension on String {
  /// Capitalize first letter
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Check if string is a valid email
  bool isValidEmail() {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(this);
  }

  /// Check if string is a valid password (min 6 characters)
  bool isValidPassword() {
    return length >= 6;
  }

  /// Remove all spaces
  String removeSpaces() {
    return replaceAll(' ', '');
  }
}

extension DoubleExtension on double {
  /// Round to n decimal places
  double roundTo(int n) {
    final int factor = (10 * n).toInt();
    return (this * factor).round() / factor;
  }

  /// Convert to percentage string
  String toPercentage([int decimals = 1]) {
    return '${(this * 100).toStringAsFixed(decimals)}%';
  }

  /// Convert kg to lbs
  double kgToLbs() {
    return this * 2.20462;
  }

  /// Convert lbs to kg
  double lbsToKg() {
    return this / 2.20462;
  }

  /// Convert cm to inches
  double cmToInches() {
    return this / 2.54;
  }

  /// Convert inches to cm
  double inchesToCm() {
    return this * 2.54;
  }
}

extension IntExtension on int {
  /// Convert seconds to MM:SS format
  String toMMSS() {
    final int minutes = this ~/ 60;
    final int seconds = this % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  /// Convert seconds to HH:MM:SS format
  String toHHMMSS() {
    final int hours = this ~/ 3600;
    final int minutes = (this % 3600) ~/ 60;
    final int seconds = this % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}

extension DateTimeExtension on DateTime {
  /// Get formatted date as 'MMM dd, yyyy'
  String toFormattedDate() {
    final List<String> months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${months[month - 1]} ${day.toString().padLeft(2, '0')}, $year';
  }

  /// Get formatted time as 'HH:MM'
  String toFormattedTime() {
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  /// Check if date is today
  bool isToday() {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Check if date is yesterday
  bool isYesterday() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year && month == yesterday.month && day == yesterday.day;
  }

  /// Get days since date
  int daysSince() {
    final now = DateTime.now();
    return now.difference(this).inDays;
  }
}
