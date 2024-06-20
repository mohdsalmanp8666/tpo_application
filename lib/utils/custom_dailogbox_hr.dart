import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tpo_application/utils/constants.dart';
import 'package:tpo_application/utils/custom_text_style.dart';
import 'package:tpo_application/utils/textfield_decoration.dart';

class CustomDailogboxHr extends StatelessWidget {
  const CustomDailogboxHr({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add HR'),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: customInputDecoration(label: "HR Name"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: customInputDecoration(label: 'Email'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: customInputDecoration(label: 'Contact'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: customInputDecoration(label: 'Post'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: customInputDecoration(label: 'Alternate Contact'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Cancel",
            style: customTextStyle(fontSize: 14, color: Colors.red.shade400),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Add",
            style: customTextStyle(fontSize: 14, color: primary),
          ),
        ),
      ],
    );
  }
}
