class LocalStorageService {
  // Singleton pattern
  static final LocalStorageService _instance = LocalStorageService._internal();

  factory LocalStorageService() {
    return _instance;
  }

  LocalStorageService._internal();

  // Cache for exercises
  Map<String, dynamic> _exerciseCache = {};
  // Cache for workouts
  Map<String, dynamic> _workoutCache = {};
  // Cache for user data
  Map<String, dynamic> _userCache = {};

  /// Store exercises in cache
  void cacheExercises(Map<String, dynamic> exercises) {
    _exerciseCache = exercises;
  }

  /// Get cached exercises
  Map<String, dynamic> getCachedExercises() {
    return _exerciseCache;
  }

  /// Clear exercise cache
  void clearExerciseCache() {
    _exerciseCache.clear();
  }

  /// Store workouts in cache
  void cacheWorkouts(Map<String, dynamic> workouts) {
    _workoutCache = workouts;
  }

  /// Get cached workouts
  Map<String, dynamic> getCachedWorkouts() {
    return _workoutCache;
  }

  /// Clear workout cache
  void clearWorkoutCache() {
    _workoutCache.clear();
  }

  /// Cache user data
  void cacheUserData(String key, dynamic value) {
    _userCache[key] = value;
  }

  /// Get cached user data
  dynamic getCachedUserData(String key) {
    return _userCache[key];
  }

  /// Clear all cache
  void clearAllCache() {
    _exerciseCache.clear();
    _workoutCache.clear();
    _userCache.clear();
  }
}
