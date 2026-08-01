import 'package:cloud_firestore/cloud_firestore.dart';

class ProgressModel {
  final String id;
  final String userId;
  final String type; // 'weight', 'measurement'
  final double value;
  final String unit; // 'kg', 'cm', etc
  final String? measurement; // 'chest', 'waist', etc (for measurement type)
  final DateTime date;
  final String? notes;

  ProgressModel({
    required this.id,
    required this.userId,
    required this.type,
    required this.value,
    required this.unit,
    this.measurement,
    required this.date,
    this.notes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'type': type,
      'value': value,
      'unit': unit,
      'measurement': measurement,
      'date': date,
      'notes': notes,
    };
  }

  factory ProgressModel.fromMap(Map<String, dynamic> map, String id) {
    return ProgressModel(
      id: id,
      userId: map['userId'] ?? '',
      type: map['type'] ?? 'weight',
      value: map['value']?.toDouble() ?? 0.0,
      unit: map['unit'] ?? 'kg',
      measurement: map['measurement'],
      date: (map['date'] as Timestamp?)?.toDate() ?? DateTime.now(),
      notes: map['notes'],
    );
  }

  ProgressModel copyWith({
    String? id,
    String? userId,
    String? type,
    double? value,
    String? unit,
    String? measurement,
    DateTime? date,
    String? notes,
  }) {
    return ProgressModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      value: value ?? this.value,
      unit: unit ?? this.unit,
      measurement: measurement ?? this.measurement,
      date: date ?? this.date,
      notes: notes ?? this.notes,
    );
  }
}
