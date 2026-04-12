import 'package:hive_ce/hive.dart';
import 'package:baby_vaccination/core/constants/hive_constants.dart';

part 'enums.g.dart';

enum UserType { guest, user }

@HiveType(typeId: HiveConstants.genderTypeId)
enum GenderType {
  @HiveField(0)
  boy,
  @HiveField(1)
  girl;

  String get value => name;
}

@HiveType(typeId: HiveConstants.bloodTypeId)
enum BloodType {
  @HiveField(0)
  aPositive('A+'),
  @HiveField(1)
  aNegative('A-'),
  @HiveField(2)
  bPositive('B+'),
  @HiveField(3)
  bNegative('B-'),
  @HiveField(4)
  oPositive('O+'),
  @HiveField(5)
  oNegative('O-'),
  @HiveField(6)
  abPositive('AB+'),
  @HiveField(7)
  abNegative('AB-');

  final String displayName;
  const BloodType(this.displayName);
}

enum SocialAuthenticationOptions { google, apple }

enum ToastType { success, error, warning, informative }
