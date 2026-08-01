import '../services/auth_service.dart';
import '../repositories/user_repository.dart';
import '../models/user_model.dart';

class AuthRepository {
  final AuthService _authService = AuthService();
  final UserRepository _userRepository = UserRepository();

  /// Sign up
  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final userCredential = await _authService.signUpWithEmail(email, password);
      final user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
      await _userRepository.createUser(user);
    } catch (e) {
      throw Exception('Sign up failed: $e');
    }
  }

  /// Sign in
  Future<void> signIn(String email, String password) async {
    try {
      await _authService.signInWithEmail(email, password);
    } catch (e) {
      throw Exception('Sign in failed: $e');
    }
  }

  /// Sign out
  Future<void> signOut() async {
    try {
      await _authService.signOut();
    } catch (e) {
      throw Exception('Sign out failed: $e');
    }
  }

  /// Reset password
  Future<void> resetPassword(String email) async {
    try {
      await _authService.resetPassword(email);
    } catch (e) {
      throw Exception('Reset password failed: $e');
    }
  }

  /// Get current user
  String? getCurrentUserId() {
    return _authService.currentUser?.uid;
  }

  /// Get auth state stream
  Stream<bool> getAuthStateStream() {
    return _authService.authStateChanges.map((user) => user != null);
  }
}
