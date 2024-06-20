import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tpo_application/utils/constants.dart';
import 'package:tpo_application/utils/custom_text_style.dart';
import 'package:tpo_application/utils/textfield_decoration.dart';

class CustomDailogboxCompany extends StatelessWidget {
  const CustomDailogboxCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // TODO:  Auto Size Text
      title: const Text('Add Company'),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // TODO: Validator, controller, onTapOutside
            TextFormField(
              decoration: customInputDecoration(label: "Company Name"),
            ),
            // TODO: Change SizedBox to Gap
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              decoration: customInputDecoration(label: 'Mode of Communication'),
              items: const [
                DropdownMenuItem(
                  value: 'Email',
                  child: Text('Email'),
                ),
                DropdownMenuItem(
                  value: 'Whatsapp',
                  child: Text('Whatsapp'),
                ),
                DropdownMenuItem(
                  value: "Contact",
                  child: Text("Contact"),
                ),
              ],
              onChanged: (value) => {},
            ),
            const SizedBox(
              height: 10,
            ),
            // TODO: Validator, controller, onTapOutside

            TextFormField(
              decoration: customInputDecoration(label: 'Contact'),
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
            style: customTextStyle(fontSize: 16, color: Colors.red.shade400),
          ),
        ),
        // TODO: Chnage Outlined Button
        TextButton(
          onPressed: () {},
          child: Text(
            "Add",
            style: customTextStyle(fontSize: 16, color: primary),
          ),
        ),
      ],
    );
  }
}
