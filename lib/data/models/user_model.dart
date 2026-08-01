import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String email;
  final String name;
  final int? age;
  final double? height; // cm
  final double? weight; // kg
  final String? fitnessGoal;
  final String? profileImageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isOnboarded;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.age,
    this.height,
    this.weight,
    this.fitnessGoal,
    this.profileImageUrl,
    required this.createdAt,
    required this.updatedAt,
    this.isOnboarded = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'age': age,
      'height': height,
      'weight': weight,
      'fitnessGoal': fitnessGoal,
      'profileImageUrl': profileImageUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isOnboarded': isOnboarded,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map, String id) {
    return UserModel(
      id: id,
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      age: map['age'],
      height: map['height']?.toDouble(),
      weight: map['weight']?.toDouble(),
      fitnessGoal: map['fitnessGoal'],
      profileImageUrl: map['profileImageUrl'],
      createdAt: (map['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      updatedAt: (map['updatedAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      isOnboarded: map['isOnboarded'] ?? false,
    );
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? name,
    int? age,
    double? height,
    double? weight,
    String? fitnessGoal,
    String? profileImageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isOnboarded,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      age: age ?? this.age,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      fitnessGoal: fitnessGoal ?? this.fitnessGoal,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isOnboarded: isOnboarded ?? this.isOnboarded,
    );
  }
}
