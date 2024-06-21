import 'package:flutter/material.dart';
import 'package:tpo_application/utils/constants.dart';

class CustomFbar extends StatelessWidget {
  final WidgetBuilder dailogBuilder;
  const CustomFbar({super.key, required this.dailogBuilder});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: primary,
      onPressed: () {
        showDialog(
          context: context,
          builder: dailogBuilder,
        );
      },
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
