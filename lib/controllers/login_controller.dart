import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tpo_application/utils/custom_log.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find<LoginController>();

  final _loading = false.obs;
  bool get loading => _loading.value;
  set loading(bool value) => _loading.value = value;

  final _isHidden = true.obs;
  bool get isHidden => _isHidden.value;
  set isHidden(bool value) => _isHidden.value = value;

  GlobalKey<FormState> key = GlobalKey<FormState>();

  loginUser() async {
    try {
      loading = true;

      if (!key.currentState!.validate()) {
        return;
      }
      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      customLog(e);
    } finally {
      loading = false;
    }
  }
}
