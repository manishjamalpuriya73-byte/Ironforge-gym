import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/workout_repository.dart';
import '../../data/models/workout_model.dart';

final workoutRepositoryProvider = Provider((ref) {
  return WorkoutRepository();
});

final allWorkoutsProvider = FutureProvider((ref) async {
  final repository = ref.watch(workoutRepositoryProvider);
  return await repository.getAllWorkouts();
});

final workoutsByDifficultyProvider = FutureProvider.family<List<WorkoutModel>, String>(
  (ref, difficulty) async {
    final repository = ref.watch(workoutRepositoryProvider);
    return await repository.getWorkoutsByDifficulty(difficulty);
  },
);
