import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/auth_repository.dart';

final authRepositoryProvider = Provider((ref) {
  return AuthRepository();
});

final authStateProvider = StreamProvider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.getAuthStateStream();
});

final currentUserIdProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.getCurrentUserId();
});
