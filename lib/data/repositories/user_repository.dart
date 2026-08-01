import '../models/user_model.dart';
import '../services/firestore_service.dart';
import '../services/auth_service.dart';

class UserRepository {
  final FirestoreService _firestoreService = FirestoreService();
  final AuthService _authService = AuthService();

  /// Create new user
  Future<void> createUser(UserModel user) async {
    try {
      await _firestoreService.createUser(user);
    } catch (e) {
      throw Exception('Failed to create user: $e');
    }
  }

  /// Get user by ID
  Future<UserModel?> getUserById(String userId) async {
    try {
      return await _firestoreService.getUser(userId);
    } catch (e) {
      throw Exception('Failed to get user: $e');
    }
  }

  /// Update user profile
  Future<void> updateUserProfile(UserModel user) async {
    try {
      await _firestoreService.updateUser(user);
    } catch (e) {
      throw Exception('Failed to update user: $e');
    }
  }

  /// Get current user
  String? getCurrentUserId() {
    return _authService.currentUser?.uid;
  }

  /// Update user email
  Future<void> updateUserEmail(String newEmail) async {
    try {
      await _authService.updateEmail(newEmail);
    } catch (e) {
      throw Exception('Failed to update email: $e');
    }
  }

  /// Update user password
  Future<void> updateUserPassword(String newPassword) async {
    try {
      await _authService.updatePassword(newPassword);
    } catch (e) {
      throw Exception('Failed to update password: $e');
    }
  }
}
