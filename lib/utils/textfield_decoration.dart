import 'package:flutter/material.dart';
import 'package:tpo_application/utils/constants.dart';

InputDecoration customInputDecoration({
  required String label,
  Widget? prefixIcon,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    prefixIcon: (prefixIcon),
    prefixIconColor: primaryText.withOpacity(0.75),
    suffixIcon: (suffixIcon),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 25,
      vertical: 15,
    ),
    counter: const SizedBox(),
    alignLabelWithHint: true,
    labelText: label,
    labelStyle: const TextStyle(
      color: primaryText,
    ),
    hintText: label,
    hintStyle: const TextStyle(
      color: primaryText,
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: primaryText),
      borderRadius: BorderRadius.circular(7.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(7.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: primary),
      borderRadius: BorderRadius.circular(7.5),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red.shade300),
      borderRadius: BorderRadius.circular(7.5),
    ),
  );
}
