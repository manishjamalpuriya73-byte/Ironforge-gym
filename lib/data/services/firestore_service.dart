import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';
import '../models/exercise_model.dart';
import '../models/workout_model.dart';
import '../models/progress_model.dart';
import '../models/diet_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // ==================== USER OPERATIONS ====================

  /// Create user document
  Future<void> createUser(UserModel user) async {
    try {
      await _firestore.collection('users').doc(user.id).set(user.toMap());
    } catch (e) {
      throw Exception('Failed to create user: $e');
    }
  }

  /// Get user by ID
  Future<UserModel?> getUser(String userId) async {
    try {
      final doc = await _firestore.collection('users').doc(userId).get();
      if (doc.exists) {
        return UserModel.fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get user: $e');
    }
  }

  /// Update user
  Future<void> updateUser(UserModel user) async {
    try {
      await _firestore.collection('users').doc(user.id).update(user.toMap());
    } catch (e) {
      throw Exception('Failed to update user: $e');
    }
  }

  // ==================== EXERCISE OPERATIONS ====================

  /// Get all exercises
  Future<List<ExerciseModel>> getAllExercises() async {
    try {
      final snapshot = await _firestore.collection('exercises').get();
      return snapshot.docs.map((doc) => ExerciseModel.fromMap(doc.data(), doc.id)).toList();
    } catch (e) {
      throw Exception('Failed to get exercises: $e');
    }
  }

  /// Get exercises by category
  Future<List<ExerciseModel>> getExercisesByCategory(String category) async {
    try {
      final snapshot = await _firestore
          .collection('exercises')
          .where('category', isEqualTo: category)
          .get();
      return snapshot.docs.map((doc) => ExerciseModel.fromMap(doc.data(), doc.id)).toList();
    } catch (e) {
      throw Exception('Failed to get exercises by category: $e');
    }
  }

  /// Get exercises by difficulty
  Future<List<ExerciseModel>> getExercisesByDifficulty(String difficulty) async {
    try {
      final snapshot = await _firestore
          .collection('exercises')
          .where('difficulty', isEqualTo: difficulty)
          .get();
      return snapshot.docs.map((doc) => ExerciseModel.fromMap(doc.data(), doc.id)).toList();
    } catch (e) {
      throw Exception('Failed to get exercises by difficulty: $e');
    }
  }

  /// Get exercise by ID
  Future<ExerciseModel?> getExercise(String exerciseId) async {
    try {
      final doc = await _firestore.collection('exercises').doc(exerciseId).get();
      if (doc.exists) {
        return ExerciseModel.fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get exercise: $e');
    }
  }

  /// Search exercises by name
  Future<List<ExerciseModel>> searchExercises(String query) async {
    try {
      final snapshot = await _firestore.collection('exercises').get();
      final List<ExerciseModel> exercises =
          snapshot.docs.map((doc) => ExerciseModel.fromMap(doc.data(), doc.id)).toList();
      return exercises
          .where((ex) => ex.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } catch (e) {
      throw Exception('Failed to search exercises: $e');
    }
  }

  // ==================== WORKOUT OPERATIONS ====================

  /// Get all workout plans
  Future<List<WorkoutModel>> getAllWorkouts() async {
    try {
      final snapshot = await _firestore.collection('workouts').get();
      return snapshot.docs.map((doc) => WorkoutModel.fromMap(doc.data(), doc.id)).toList();
    } catch (e) {
      throw Exception('Failed to get workouts: $e');
    }
  }

  /// Get workouts by difficulty
  Future<List<WorkoutModel>> getWorkoutsByDifficulty(String difficulty) async {
    try {
      final snapshot = await _firestore
          .collection('workouts')
          .where('difficulty', isEqualTo: difficulty)
          .get();
      return snapshot.docs.map((doc) => WorkoutModel.fromMap(doc.data(), doc.id)).toList();
    } catch (e) {
      throw Exception('Failed to get workouts by difficulty: $e');
    }
  }

  /// Get workout by ID
  Future<WorkoutModel?> getWorkout(String workoutId) async {
    try {
      final doc = await _firestore.collection('workouts').doc(workoutId).get();
      if (doc.exists) {
        return WorkoutModel.fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get workout: $e');
    }
  }

  // ==================== PROGRESS OPERATIONS ====================

  /// Add progress entry
  Future<void> addProgress(ProgressModel progress) async {
    try {
      await _firestore
          .collection('user_progress')
          .doc(progress.userId)
          .collection(progress.type)
          .doc(progress.id)
          .set(progress.toMap());
    } catch (e) {
      throw Exception('Failed to add progress: $e');
    }
  }

  /// Get user progress by type
  Future<List<ProgressModel>> getUserProgress(String userId, String type) async {
    try {
      final snapshot = await _firestore
          .collection('user_progress')
          .doc(userId)
          .collection(type)
          .orderBy('date', descending: true)
          .get();
      return snapshot.docs.map((doc) => ProgressModel.fromMap(doc.data(), doc.id)).toList();
    } catch (e) {
      throw Exception('Failed to get user progress: $e');
    }
  }

  /// Update progress entry
  Future<void> updateProgress(ProgressModel progress) async {
    try {
      await _firestore
          .collection('user_progress')
          .doc(progress.userId)
          .collection(progress.type)
          .doc(progress.id)
          .update(progress.toMap());
    } catch (e) {
      throw Exception('Failed to update progress: $e');
    }
  }

  /// Delete progress entry
  Future<void> deleteProgress(String userId, String type, String progressId) async {
    try {
      await _firestore
          .collection('user_progress')
          .doc(userId)
          .collection(type)
          .doc(progressId)
          .delete();
    } catch (e) {
      throw Exception('Failed to delete progress: $e');
    }
  }

  // ==================== DIET OPERATIONS ====================

  /// Get all diet plans
  Future<List<DietModel>> getAllDiets() async {
    try {
      final snapshot = await _firestore.collection('diets').get();
      return snapshot.docs.map((doc) => DietModel.fromMap(doc.data(), doc.id)).toList();
    } catch (e) {
      throw Exception('Failed to get diet plans: $e');
    }
  }

  /// Get diet by type
  Future<List<DietModel>> getDietsByType(String type) async {
    try {
      final snapshot = await _firestore.collection('diets').where('type', isEqualTo: type).get();
      return snapshot.docs.map((doc) => DietModel.fromMap(doc.data(), doc.id)).toList();
    } catch (e) {
      throw Exception('Failed to get diets by type: $e');
    }
  }

  /// Get diet by ID
  Future<DietModel?> getDiet(String dietId) async {
    try {
      final doc = await _firestore.collection('diets').doc(dietId).get();
      if (doc.exists) {
        return DietModel.fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get diet: $e');
    }
  }

  // ==================== USER FAVORITES ====================

  /// Add to favorites
  Future<void> addFavorite(String userId, String exerciseId) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('favorites')
          .doc(exerciseId)
          .set({'exerciseId': exerciseId, 'addedAt': DateTime.now()});
    } catch (e) {
      throw Exception('Failed to add favorite: $e');
    }
  }

  /// Remove from favorites
  Future<void> removeFavorite(String userId, String exerciseId) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('favorites')
          .doc(exerciseId)
          .delete();
    } catch (e) {
      throw Exception('Failed to remove favorite: $e');
    }
  }

  /// Get user favorites
  Future<List<String>> getFavorites(String userId) async {
    try {
      final snapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('favorites')
          .get();
      return snapshot.docs.map((doc) => doc['exerciseId'] as String).toList();
    } catch (e) {
      throw Exception('Failed to get favorites: $e');
    }
  }
}
