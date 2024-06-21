import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tpo_application/utils/constants.dart';
import 'package:tpo_application/utils/custom_appbar.dart';
import 'package:tpo_application/utils/custom_back_button.dart';
import 'package:tpo_application/utils/custom_dailogbox_hr.dart';
import 'package:tpo_application/utils/custom_fbar.dart';
import 'package:tpo_application/utils/custom_text_style.dart';

class HrListScreen extends StatelessWidget {
  const HrListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarSize(
        context,
        child: CustomAppBar(
          title: 'HR List',
          leadingWidget: CustomBackButton(
            onPressed: () {
              Get.back();
            },
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/not_found.svg',
                  height: 200,
                  width: 150,
                ),
                AutoSizeText(
                  "No HR Found",
                  style: customTextStyle(
                    color: primary,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFbar(
        dailogBuilder: (context) => CustomDailogboxHr(),
      ),
    );
  }
}
