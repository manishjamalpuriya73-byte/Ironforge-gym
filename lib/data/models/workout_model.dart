import 'package:cloud_firestore/cloud_firestore.dart';

class WorkoutModel {
  final String id;
  final String name;
  final String description;
  final String difficulty;
  final int duration; // days
  final List<String> exerciseIds;
  final String category;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  WorkoutModel({
    required this.id,
    required this.name,
    required this.description,
    required this.difficulty,
    required this.duration,
    required this.exerciseIds,
    required this.category,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'difficulty': difficulty,
      'duration': duration,
      'exerciseIds': exerciseIds,
      'category': category,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory WorkoutModel.fromMap(Map<String, dynamic> map, String id) {
    return WorkoutModel(
      id: id,
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      difficulty: map['difficulty'] ?? 'Beginner',
      duration: map['duration'] ?? 28,
      exerciseIds: List<String>.from(map['exerciseIds'] ?? []),
      category: map['category'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      createdAt: (map['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      updatedAt: (map['updatedAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  WorkoutModel copyWith({
    String? id,
    String? name,
    String? description,
    String? difficulty,
    int? duration,
    List<String>? exerciseIds,
    String? category,
    String? imageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return WorkoutModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      difficulty: difficulty ?? this.difficulty,
      duration: duration ?? this.duration,
      exerciseIds: exerciseIds ?? this.exerciseIds,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
