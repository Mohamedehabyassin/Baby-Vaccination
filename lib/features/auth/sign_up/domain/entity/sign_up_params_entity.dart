class SignUpParamsEntity {
  const SignUpParamsEntity({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
  });

  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
}
