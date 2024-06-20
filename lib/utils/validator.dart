import 'dart:ffi';

import 'package:get/get.dart';

class Validator {
  static emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter Email';
    } else if (!value.isEmail) {
      return 'Enter Valid Email';
    }
    return;
  }

  static passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Password";
    } else if (value.length < 6) {
      return "Password must be at least 6 characters";
    } else {
      return;
    }
  }

  static contactValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Contact";
    } else if (value.length == 10) {
      return "Contact must be at least 10 characters";
    } else {
      return;
    }
  }
}
