import 'package:intl/intl.dart';

class Formatters {
  /// Format number with thousand separator
  static String formatNumber(num value) {
    final formatter = NumberFormat('#,##0', 'en_US');
    return formatter.format(value);
  }

  /// Format number with decimal places
  static String formatDecimal(double value, {int decimals = 2}) {
    return value.toStringAsFixed(decimals);
  }

  /// Format currency
  static String formatCurrency(double value, {String symbol = '\$'}) {
    return '$symbol${formatNumber(value.toInt())}.${(value.remainder(1) * 100).toStringAsFixed(0).padLeft(2, '0')}';
  }

  /// Format percentage
  static String formatPercentage(double value, {int decimals = 1}) {
    return '${value.toStringAsFixed(decimals)}%';
  }

  /// Format date
  static String formatDate(DateTime date, {String format = 'MMM dd, yyyy'}) {
    final formatter = DateFormat(format);
    return formatter.format(date);
  }

  /// Format time
  static String formatTime(DateTime time, {String format = 'HH:mm'}) {
    final formatter = DateFormat(format);
    return formatter.format(time);
  }

  /// Format date and time
  static String formatDateTime(DateTime dateTime, {String format = 'MMM dd, yyyy HH:mm'}) {
    final formatter = DateFormat(format);
    return formatter.format(dateTime);
  }

  /// Format duration
  static String formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    } else {
      return '${seconds}s';
    }
  }

  /// Format seconds to MM:SS
  static String formatSeconds(int seconds) {
    final int minutes = seconds ~/ 60;
    final int secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  /// Format calories
  static String formatCalories(double calories) {
    return '${formatDecimal(calories, decimals: 0)} kcal';
  }

  /// Format weight
  static String formatWeight(double weight, {String unit = 'kg'}) {
    return '${formatDecimal(weight)} $unit';
  }

  /// Format height
  static String formatHeight(double height, {String unit = 'cm'}) {
    return '${formatDecimal(height)} $unit';
  }

  /// Format BMI
  static String formatBMI(double bmi) {
    return '${formatDecimal(bmi, decimals: 1)} BMI';
  }
}
