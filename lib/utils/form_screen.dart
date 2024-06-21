import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tpo_application/utils/custom_appbar.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarSize(
        context,
        child: CustomAppBar(title: "Form"),
      ),
      body: SafeArea(
        child: SizedBox(
          child: Center(
              child: AutoSizeText(
            "Form Screen",
            style: TextStyle(fontSize: 40),
          )),
        ),
      ),
    );
  }
}
