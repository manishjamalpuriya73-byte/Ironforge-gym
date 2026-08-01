import 'package:cloud_firestore/cloud_firestore.dart';

class DietModel {
  final String id;
  final String name;
  final String type; // 'muscle_gain', 'fat_loss', 'balanced'
  final String description;
  final double dailyCalories;
  final double protein; // grams
  final double carbs; // grams
  final double fats; // grams
  final List<String> foodItems;
  final List<String> mealPlans;
  final DateTime createdAt;

  DietModel({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.dailyCalories,
    required this.protein,
    required this.carbs,
    required this.fats,
    required this.foodItems,
    required this.mealPlans,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'description': description,
      'dailyCalories': dailyCalories,
      'protein': protein,
      'carbs': carbs,
      'fats': fats,
      'foodItems': foodItems,
      'mealPlans': mealPlans,
      'createdAt': createdAt,
    };
  }

  factory DietModel.fromMap(Map<String, dynamic> map, String id) {
    return DietModel(
      id: id,
      name: map['name'] ?? '',
      type: map['type'] ?? 'balanced',
      description: map['description'] ?? '',
      dailyCalories: map['dailyCalories']?.toDouble() ?? 2000.0,
      protein: map['protein']?.toDouble() ?? 150.0,
      carbs: map['carbs']?.toDouble() ?? 200.0,
      fats: map['fats']?.toDouble() ?? 65.0,
      foodItems: List<String>.from(map['foodItems'] ?? []),
      mealPlans: List<String>.from(map['mealPlans'] ?? []),
      createdAt: (map['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  DietModel copyWith({
    String? id,
    String? name,
    String? type,
    String? description,
    double? dailyCalories,
    double? protein,
    double? carbs,
    double? fats,
    List<String>? foodItems,
    List<String>? mealPlans,
    DateTime? createdAt,
  }) {
    return DietModel(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      description: description ?? this.description,
      dailyCalories: dailyCalories ?? this.dailyCalories,
      protein: protein ?? this.protein,
      carbs: carbs ?? this.carbs,
      fats: fats ?? this.fats,
      foodItems: foodItems ?? this.foodItems,
      mealPlans: mealPlans ?? this.mealPlans,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
