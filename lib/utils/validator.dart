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
}
