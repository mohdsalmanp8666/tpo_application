import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tpo_application/utils/custom_log.dart';
import 'package:tpo_application/utils/custom_toasts.dart';

class HrController extends GetxController {
  static HrController get instance => Get.find<HrController>();

  final _loading = false.obs;
  bool get loading => _loading.value;
  set loading(bool value) => _loading.value = value;

  GlobalKey<FormState> key = GlobalKey<FormState>();

  final hrNameController = TextEditingController();
  final hrEmailController = TextEditingController();
  final hrContactController = TextEditingController();
  final hrPostController = TextEditingController();
  final hrAltContactNumberController = TextEditingController();

  addCompany() async {
    try {
      // Set the loading state to true
      loading = true;
      // Check if the form is valid
      if (!key.currentState!.validate()) {
        // If the form is invalid, return and do not proceed further
        return;
      }
      // If the form is valid, catch any exceptions that may occur
      await Future.delayed(const Duration(seconds: 2));
      Get.back();
      successToast("HR Added Successfully");
    } catch (e) {
      // If an exception occurs, log it
      customLog(e);
    }
  }
}
