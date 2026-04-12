import 'package:baby_vaccination/features/add_baby/domain/entity/baby_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BabyModel extends BabyEntity {
  const BabyModel({
    super.id,
    required super.fullName,
    required super.dateOfBirth,
    required super.gender,
    required super.bloodType,
    required super.userId,
  });

  factory BabyModel.fromJson(Map<String, dynamic> json, {String? id}) {
    return BabyModel(
      id: id,
      fullName: json['fullName'] as String,
      dateOfBirth: (json['dateOfBirth'] as Timestamp).toDate(),
      gender: json['gender'] as String,
      bloodType: json['bloodType'] as String,
      userId: json['userId'] as String,
    );
  }

  factory BabyModel.fromEntity(BabyEntity entity) {
    return BabyModel(
      id: entity.id,
      fullName: entity.fullName,
      dateOfBirth: entity.dateOfBirth,
      gender: entity.gender,
      bloodType: entity.bloodType,
      userId: entity.userId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'dateOfBirth': Timestamp.fromDate(dateOfBirth),
      'gender': gender,
      'bloodType': bloodType,
      'userId': userId,
    };
  }
}
