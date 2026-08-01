import '../services/firestore_service.dart';
import '../models/progress_model.dart';

class ProgressRepository {
  final FirestoreService _firestoreService = FirestoreService();

  /// Add progress
  Future<void> addProgress(ProgressModel progress) async {
    try {
      await _firestoreService.addProgress(progress);
    } catch (e) {
      throw Exception('Failed to add progress: $e');
    }
  }

  /// Get user progress
  Future<List<ProgressModel>> getUserProgress(String userId, String type) async {
    try {
      return await _firestoreService.getUserProgress(userId, type);
    } catch (e) {
      throw Exception('Failed to get progress: $e');
    }
  }

  /// Update progress
  Future<void> updateProgress(ProgressModel progress) async {
    try {
      await _firestoreService.updateProgress(progress);
    } catch (e) {
      throw Exception('Failed to update progress: $e');
    }
  }

  /// Delete progress
  Future<void> deleteProgress(String userId, String type, String progressId) async {
    try {
      await _firestoreService.deleteProgress(userId, type, progressId);
    } catch (e) {
      throw Exception('Failed to delete progress: $e');
    }
  }
}
