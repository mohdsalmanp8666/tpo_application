import 'package:get/get.dart';

class Validator {

  // TODO: Dynamic Validation

  // * Email Validation
  static emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter Email';
    } else if (!value.isEmail) {
      return 'Enter Valid Email';
    }
    return;
  }

// * Password Validation
  static passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Password";
    } else if (value.length < 6) {
      return "Password must be at least 6 characters";
    } else {
      return;
    }
  }

// TODO: Name/Company Name Validation

// * Phone Number Validation
  static phoneValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Contact";
    } else if (value.isPhoneNumber || value.length != 10) {
      return "Contact must be at least 10 characters";
    } else {
      return;
    }
  }
}
