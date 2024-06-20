import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tpo_application/utils/constants.dart';
import 'package:tpo_application/utils/custom_text_style.dart';

PreferredSize appbarSize(
  BuildContext context, {
  required Widget child,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(
      MediaQuery.of(context).size.height * 0.075,
    ),
    child: child,
  );
}

class CustomAppBar extends StatelessWidget {
  final String title;
  Widget? leadingWidget;

  CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 7.5,
      surfaceTintColor: primary,
      automaticallyImplyLeading: false,
      title: AutoSizeText(
        title,
        style: customTextStyle(),
      ),
      leading: leadingWidget,
    );
  }
}
