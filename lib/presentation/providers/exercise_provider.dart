import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/exercise_repository.dart';
import '../../data/models/exercise_model.dart';

final exerciseRepositoryProvider = Provider((ref) {
  return ExerciseRepository();
});

final allExercisesProvider = FutureProvider((ref) async {
  final repository = ref.watch(exerciseRepositoryProvider);
  return await repository.getAllExercises();
});

final exercisesByCategoryProvider = FutureProvider.family<List<ExerciseModel>, String>(
  (ref, category) async {
    final repository = ref.watch(exerciseRepositoryProvider);
    return await repository.getExercisesByCategory(category);
  },
);

final exercisesByDifficultyProvider = FutureProvider.family<List<ExerciseModel>, String>(
  (ref, difficulty) async {
    final repository = ref.watch(exerciseRepositoryProvider);
    return await repository.getExercisesByDifficulty(difficulty);
  },
);

final searchExercisesProvider = FutureProvider.family<List<ExerciseModel>, String>(
  (ref, query) async {
    final repository = ref.watch(exerciseRepositoryProvider);
    return await repository.searchExercises(query);
  },
);
