import 'package:cloud_firestore/cloud_firestore.dart';

class ExerciseModel {
  final String id;
  final String name;
  final String category;
  final String difficulty;
  final String description;
  final List<String> instructions;
  final List<String> targetMuscles;
  final int sets;
  final int reps;
  final int restTime; // seconds
  final String imageUrl;
  final String? videoUrl;
  final List<String> commonMistakes;
  final List<String> safetyTips;
  final String breathingTechnique;

  ExerciseModel({
    required this.id,
    required this.name,
    required this.category,
    required this.difficulty,
    required this.description,
    required this.instructions,
    required this.targetMuscles,
    required this.sets,
    required this.reps,
    required this.restTime,
    required this.imageUrl,
    this.videoUrl,
    required this.commonMistakes,
    required this.safetyTips,
    required this.breathingTechnique,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'difficulty': difficulty,
      'description': description,
      'instructions': instructions,
      'targetMuscles': targetMuscles,
      'sets': sets,
      'reps': reps,
      'restTime': restTime,
      'imageUrl': imageUrl,
      'videoUrl': videoUrl,
      'commonMistakes': commonMistakes,
      'safetyTips': safetyTips,
      'breathingTechnique': breathingTechnique,
    };
  }

  factory ExerciseModel.fromMap(Map<String, dynamic> map, String id) {
    return ExerciseModel(
      id: id,
      name: map['name'] ?? '',
      category: map['category'] ?? '',
      difficulty: map['difficulty'] ?? 'Beginner',
      description: map['description'] ?? '',
      instructions: List<String>.from(map['instructions'] ?? []),
      targetMuscles: List<String>.from(map['targetMuscles'] ?? []),
      sets: map['sets'] ?? 3,
      reps: map['reps'] ?? 10,
      restTime: map['restTime'] ?? 60,
      imageUrl: map['imageUrl'] ?? '',
      videoUrl: map['videoUrl'],
      commonMistakes: List<String>.from(map['commonMistakes'] ?? []),
      safetyTips: List<String>.from(map['safetyTips'] ?? []),
      breathingTechnique: map['breathingTechnique'] ?? '',
    );
  }

  ExerciseModel copyWith({
    String? id,
    String? name,
    String? category,
    String? difficulty,
    String? description,
    List<String>? instructions,
    List<String>? targetMuscles,
    int? sets,
    int? reps,
    int? restTime,
    String? imageUrl,
    String? videoUrl,
    List<String>? commonMistakes,
    List<String>? safetyTips,
    String? breathingTechnique,
  }) {
    return ExerciseModel(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      difficulty: difficulty ?? this.difficulty,
      description: description ?? this.description,
      instructions: instructions ?? this.instructions,
      targetMuscles: targetMuscles ?? this.targetMuscles,
      sets: sets ?? this.sets,
      reps: reps ?? this.reps,
      restTime: restTime ?? this.restTime,
      imageUrl: imageUrl ?? this.imageUrl,
      videoUrl: videoUrl ?? this.videoUrl,
      commonMistakes: commonMistakes ?? this.commonMistakes,
      safetyTips: safetyTips ?? this.safetyTips,
      breathingTechnique: breathingTechnique ?? this.breathingTechnique,
    );
  }
}
