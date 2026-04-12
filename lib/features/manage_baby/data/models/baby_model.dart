import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:baby_vaccination/core/constants/hive_constants.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_ce/hive.dart';

part 'baby_model.g.dart';

@HiveType(typeId: HiveConstants.babyTypeId)
class BabyModel extends BabyEntity {
  const BabyModel({
    this.id,
    required this.fullName,
    required this.dateOfBirth,
    required this.gender,
    required this.bloodType,
    required this.userId,
  }) : super(
         id: id,
         fullName: fullName,
         dateOfBirth: dateOfBirth,
         gender: gender,
         bloodType: bloodType,
         userId: userId,
       );

  factory BabyModel.fromJson(Map<String, dynamic> json, {String? id}) {
    return BabyModel(
      id: id,
      fullName: json['fullName'] as String,
      dateOfBirth: (json['dateOfBirth'] as Timestamp).toDate(),
      gender: GenderType.values.byName(json['gender'] as String),
      bloodType: BloodType.values.firstWhere(
        (e) => e.displayName == (json['bloodType'] as String),
      ),
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

  @HiveField(0)
  @override
  final String? id;

  @HiveField(1)
  @override
  final String fullName;

  @HiveField(2)
  @override
  final DateTime dateOfBirth;

  @HiveField(3)
  @override
  final GenderType gender;

  @HiveField(4)
  @override
  final BloodType bloodType;

  @HiveField(5)
  @override
  final String userId;

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'dateOfBirth': Timestamp.fromDate(dateOfBirth),
      'gender': gender.name,
      'bloodType': bloodType.displayName,
      'userId': userId,
    };
  }
}
