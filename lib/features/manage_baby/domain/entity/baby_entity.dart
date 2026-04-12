class BabyEntity {
  const BabyEntity({
    this.id,
    required this.fullName,
    required this.dateOfBirth,
    required this.gender,
    required this.bloodType,
    required this.userId,
  });

  final String? id;
  final String fullName;
  final DateTime dateOfBirth;
  final String gender;
  final String bloodType;
  final String userId;
}
