import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tpo_application/controllers/hr_controller.dart';
import 'package:tpo_application/utils/constants.dart';
import 'package:tpo_application/utils/custom_text_style.dart';
import 'package:tpo_application/utils/textfield_decoration.dart';
import 'package:tpo_application/utils/validator.dart';

class CustomDailogboxHr extends StatelessWidget {
  final controller = Get.put(HrController());

  CustomDailogboxHr({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const AutoSizeText('Add HR'),
      content: Form(
        key: key,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: HrController.instance.hrNameController,
              decoration: customInputDecoration(label: "HR Name"),
              validator: (value) => Validator.commanValidation(value),
              onTapOutside: (event) => FocusScope.of(context).unfocus,
            ),
            const Gap(10),
            TextFormField(
              controller: HrController.instance.hrEmailController,
              decoration: customInputDecoration(label: 'Email'),
              validator: (value) => Validator.emailValidation(value),
              onTapOutside: (event) => FocusScope.of(context).unfocus,
            ),
            const Gap(10),
            TextFormField(
              maxLength: 10,
              controller: HrController.instance.hrContactController,
              decoration: customInputDecoration(label: 'Contact'),
              validator: (value) => Validator.phoneValidation(value),
              onTapOutside: (event) => FocusScope.of(context).unfocus,
            ),
            const Gap(10),
            TextFormField(
              controller: HrController.instance.hrPostController,
              decoration: customInputDecoration(label: 'Post'),
              validator: (value) => Validator.commanValidation(value),
              onTapOutside: (event) => FocusScope.of(context).unfocus,
            ),
            const Gap(10),
            TextFormField(
              controller: HrController.instance.hrAltContactNumberController,
              decoration: customInputDecoration(label: 'Alternate Contact'),
              validator: (value) => Validator.phoneValidation(value),
              onTapOutside: (event) => FocusScope.of(context).unfocus,
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
            style: customTextStyle(fontSize: 14, color: Colors.red.shade400),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: AutoSizeText(
            "Add",
            style: customTextStyle(fontSize: 14, color: primary),
          ),
        ),
      ],
    );
  }
}
