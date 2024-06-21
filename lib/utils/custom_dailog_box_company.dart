import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tpo_application/controllers/company_controller.dart';
import 'package:tpo_application/utils/constants.dart';
import 'package:tpo_application/utils/custom_text_style.dart';
import 'package:tpo_application/utils/textfield_decoration.dart';
import 'package:tpo_application/utils/validator.dart';

class CustomDailogboxCompany extends StatelessWidget {
  final controller = Get.put(CompanyController());

  CustomDailogboxCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const AutoSizeText('Add Company'),
      content: Form(
        key: key,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: CompanyController.instance.companyNameController,
              validator: (value) => Validator.commanValidation(value),
              onTapOutside: (event) => FocusScope.of(context).unfocus,
              decoration: customInputDecoration(label: "Company Name"),
            ),
            const Gap(10),
            DropdownButtonFormField(
              validator: (value) => Validator.commanValidation(value),
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
            const Gap(10),
            TextFormField(
              controller: CompanyController.instance.contactController,
              validator: (value) => Validator.phoneValidation(value),
              onTapOutside: (event) => FocusScope.of(context).unfocus,
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
          child: AutoSizeText(
            "Cancel",
            style: customTextStyle(fontSize: 16, color: Colors.red.shade400),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: AutoSizeText(
            "Add",
            style: customTextStyle(fontSize: 16, color: primary),
          ),
        ),
      ],
    );
  }
}
