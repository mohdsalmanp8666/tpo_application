// TODO: Company controller

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tpo_application/utils/custom_log.dart';
import 'package:tpo_application/utils/custom_toasts.dart';

class CompanyController extends GetxController {
  static CompanyController get instance => Get.find<CompanyController>();

  final _loading = false.obs;
  bool get loading => _loading.value;
  set loading(bool value) => _loading.value = value;

  GlobalKey<FormState> key = GlobalKey<FormState>();

  final companyNameController = TextEditingController();
  final contactController = TextEditingController();
  final modeOfCommunicationController = TextEditingController();

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
      successToast("Company Added Successfully");
    } catch (e) {
      // If an exception occurs, log it
      customLog(e);
    }
  }
}
