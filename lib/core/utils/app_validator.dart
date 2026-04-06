// import 'package:baby_vaccination/core/utils/extensions/string_extension.dart';

// class AppValidator {
//   static String? emailValidator(String? value) {
//     if (value.isValid()) {
//       if (RegExp(
//         r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$",
//       ).hasMatch(value!)) {
//         return null;
//       } else {
//         return S.of(RouteHelper.context).emailError;
//       }
//     } else {
//       return S.of(RouteHelper.context).emailError;
//     }
//   }

//   static String? passwordValidator(String? value) {
//     if (value.isValid()) {
//       if (RegExp(
//         r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@+*#\$%\^&\*\(\),\.\?":\{\}\|<>_\-]).{8,}$',
//       ).hasMatch(value!)) {
//         return null;
//       } else {
//         return S.of(RouteHelper.context).passwordError;
//       }
//     } else {
//       return S.of(RouteHelper.context).passwordError;
//     }
//   }

//   static String? confirmPasswordValidator(
//     String? password,
//     String? confirmPassword,
//   ) {
//     if (passwordValidator(confirmPassword) == null) {
//       if (confirmPassword == password) {
//         return null;
//       } else {
//         return S.of(RouteHelper.context).confirmPasswordError;
//       }
//     } else {
//       return passwordValidator(confirmPassword);
//     }
//   }

//   static String? phoneValidator(String? value) {
//     if (value.isValid()) {
//       if (RegExp(r'^\+?[0-9]{9,15}$').hasMatch(value!)) {
//         return null;
//       } else {
//         return S.of(RouteHelper.context).phoneError;
//       }
//     } else {
//       return S.of(RouteHelper.context).phoneError;
//     }
//   }

//   static String? nameValidator(String? value) {
//     if (value.isValid()) {
//       if (RegExp(
//         r'^[\p{Letter} \p{Letter}]{3,25}$',
//         unicode: true,
//       ).hasMatch(value!)) {
//         return null;
//       } else {
//         return S.of(RouteHelper.context).fullNameError;
//       }
//     } else {
//       return S.of(RouteHelper.context).fullNameError;
//     }
//   }

//   String? validateSelection(Object? selectedItems) {
//     final List<String> items = (selectedItems as List<String>?) ?? [];

//     if (items.isEmpty) {
//       return "at_least_one";
//     }
//     // Add more validation conditions as needed
//     return null; // Return null if the selection is valid
//   }

//   static String? dateOfBirthValidator(String? value) {
//     if (value.isValid()) {
//       if (RegExp(
//         r'^\d{4}[-/](0[1-9]|1[0-2])[-/](0[1-9]|[12][0-9]|3[01])$',
//       ).hasMatch(value!)) {
//         return null;
//       } else {
//         return S.of(RouteHelper.context).dateOfBirthError;
//       }
//     } else {
//       return S.of(RouteHelper.context).dateOfBirthError;
//     }
//   }

//   static String? otpValidator(String? value) {
//     if (value.isValid()) {
//       if (RegExp(r'^[0-9]{4}$').hasMatch(value!)) {
//         return null;
//       } else {
//         return S.of(RouteHelper.context).otpError;
//       }
//     } else {
//       return S.of(RouteHelper.context).otpError;
//     }
//   }
// }
