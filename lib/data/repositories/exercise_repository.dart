import '../services/firestore_service.dart';
import '../models/exercise_model.dart';

class ExerciseRepository {
  final FirestoreService _firestoreService = FirestoreService();

  /// Get all exercises
  Future<List<ExerciseModel>> getAllExercises() async {
    try {
      return await _firestoreService.getAllExercises();
    } catch (e) {
      throw Exception('Failed to get exercises: $e');
    }
  }

  /// Get exercises by category
  Future<List<ExerciseModel>> getExercisesByCategory(String category) async {
    try {
      return await _firestoreService.getExercisesByCategory(category);
    } catch (e) {
      throw Exception('Failed to get exercises by category: $e');
    }
  }

  /// Get exercises by difficulty
  Future<List<ExerciseModel>> getExercisesByDifficulty(String difficulty) async {
    try {
      return await _firestoreService.getExercisesByDifficulty(difficulty);
    } catch (e) {
      throw Exception('Failed to get exercises by difficulty: $e');
    }
  }

  /// Get single exercise
  Future<ExerciseModel?> getExercise(String exerciseId) async {
    try {
      return await _firestoreService.getExercise(exerciseId);
    } catch (e) {
      throw Exception('Failed to get exercise: $e');
    }
  }

  /// Search exercises
  Future<List<ExerciseModel>> searchExercises(String query) async {
    try {
      return await _firestoreService.searchExercises(query);
    } catch (e) {
      throw Exception('Failed to search exercises: $e');
    }
  }
}
