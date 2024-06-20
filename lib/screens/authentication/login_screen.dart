import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tpo_application/controllers/login_controller.dart';
import 'package:tpo_application/utils/constants.dart';
import 'package:tpo_application/utils/custom_log.dart';
import 'package:tpo_application/utils/custom_text_style.dart';
import 'package:tpo_application/utils/textfield_decoration.dart';
import 'package:tpo_application/utils/validator.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(LoginController());
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 0),
        child: AppBar(),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: defaultPadding,
            child: Form(
              key: LoginController.instance.key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "Login",
                    style: customTextStyle(
                      fontSize: 30,
                    ),
                  ),
                  // * Email Field
                  TextFormField(
                    validator: (value) => Validator.emailValidation(value),
                    decoration: customInputDecoration(
                        label: 'Email',
                        prefixIcon: const Icon(
                          Icons.person,
                        )),
                  ),
                  // * Password Field
                  Obx(
                    () => TextFormField(
                      obscureText: LoginController.instance.isHidden,
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      decoration: customInputDecoration(
                        label: 'Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () => LoginController.instance.isHidden =
                              !LoginController.instance.isHidden,
                          icon: Icon(
                            LoginController.instance.isHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // ! Login Button
                  SizedBox.fromSize(
                    size: const Size.fromHeight(50),
                    child: ElevatedButton(
                      onPressed: () async => LoginController.instance.loading
                          ? customLog("Please wait")
                          : await LoginController.instance.loginUser(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Obx(
                        () => LoginController.instance.loading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : AutoSizeText(
                                "Login",
                                style: customTextStyle(
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
