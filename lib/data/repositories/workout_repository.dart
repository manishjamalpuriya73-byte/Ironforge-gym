import '../services/firestore_service.dart';
import '../models/workout_model.dart';

class WorkoutRepository {
  final FirestoreService _firestoreService = FirestoreService();

  /// Get all workouts
  Future<List<WorkoutModel>> getAllWorkouts() async {
    try {
      return await _firestoreService.getAllWorkouts();
    } catch (e) {
      throw Exception('Failed to get workouts: $e');
    }
  }

  /// Get workouts by difficulty
  Future<List<WorkoutModel>> getWorkoutsByDifficulty(String difficulty) async {
    try {
      return await _firestoreService.getWorkoutsByDifficulty(difficulty);
    } catch (e) {
      throw Exception('Failed to get workouts: $e');
    }
  }

  /// Get single workout
  Future<WorkoutModel?> getWorkout(String workoutId) async {
    try {
      return await _firestoreService.getWorkout(workoutId);
    } catch (e) {
      throw Exception('Failed to get workout: $e');
    }
  }
}
