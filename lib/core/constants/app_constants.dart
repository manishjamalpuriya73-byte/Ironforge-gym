import 'package:flutter/material.dart';

class AppConstants {
  // App Name
  static const String appName = 'IronForge Gym';
  static const String appVersion = '1.0.0';

  // Sizing
  static const double paddingXSmall = 4.0;
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingXLarge = 32.0;

  static const double borderRadiusSmall = 4.0;
  static const double borderRadiusMedium = 8.0;
  static const double borderRadiusLarge = 12.0;
  static const double borderRadiusXLarge = 16.0;

  static const double elevationSmall = 2.0;
  static const double elevationMedium = 4.0;
  static const double elevationLarge = 8.0;

  // Animation Durations
  static const Duration animationDurationShort = Duration(milliseconds: 150);
  static const Duration animationDurationMedium = Duration(milliseconds: 300);
  static const Duration animationDurationLong = Duration(milliseconds: 500);

  // Fitness Constants
  static const int defaultRestTime = 60; // seconds
  static const int defaultWorkoutDuration = 45; // minutes
  static const double defaultCalorieGoal = 2000; // kcal
  static const double defaultWaterGoal = 2500; // ml

  // Body Measurements
  static const List<String> bodyMeasurements = [
    'Chest',
    'Waist',
    'Biceps',
    'Forearms',
    'Thighs',
    'Calves',
    'Hips',
  ];

  // Fitness Goals
  static const List<String> fitnessGoals = [
    'Weight Loss',
    'Muscle Gain',
    'Get Stronger',
    'Improve Fitness',
    'Maintain Health',
  ];

  // Difficulty Levels
  static const List<String> difficultyLevels = [
    'Beginner',
    'Intermediate',
    'Advanced',
  ];

  // Workout Categories
  static const List<String> workoutCategories = [
    'Chest',
    'Back',
    'Shoulders',
    'Biceps',
    'Triceps',
    'Forearms',
    'Legs',
    'Calves',
    'Abs',
    'Cardio',
    'Full Body',
    'Stretching & Warm-up',
  ];

  // Workout Plans
  static const List<String> workoutPlans = [
    'Beginner (4 weeks)',
    'Intermediate (8 weeks)',
    'Advanced (12 weeks)',
    'Fat Loss',
    'Muscle Gain',
    'Strength',
    'Home Workout (No Equipment)',
    'Gym Workout',
  ];
}
