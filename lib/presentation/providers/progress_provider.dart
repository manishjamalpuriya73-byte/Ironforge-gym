import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/progress_repository.dart';
import '../../data/models/progress_model.dart';

final progressRepositoryProvider = Provider((ref) {
  return ProgressRepository();
});

final userProgressProvider = FutureProvider.family<List<ProgressModel>, (String, String)>(
  (ref, params) async {
    final repository = ref.watch(progressRepositoryProvider);
    return await repository.getUserProgress(params.$1, params.$2);
  },
);
