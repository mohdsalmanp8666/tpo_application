import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tpo_application/screens/hr/hr_list_screen.dart';
import 'package:tpo_application/utils/constants.dart';
import 'package:tpo_application/utils/custom_appbar.dart';
import 'package:tpo_application/utils/custom_back_button.dart';
import 'package:tpo_application/utils/custom_dailog_box_company.dart';
import 'package:tpo_application/utils/custom_fbar.dart';
import 'package:tpo_application/utils/custom_text_style.dart';

class CompanyListScreen extends StatelessWidget {
  const CompanyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarSize(context,
          child: CustomAppBar(
            title: "Company List",
            leadingWidget: CustomBackButton(onPressed: () {
              Get.back();
            }),
          )),
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
                  "No Company Found",
                  style: customTextStyle(
                    color: primary,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const HrListScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: AutoSizeText(
                    "Hr List",
                    style: customTextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFbar(
        dailogBuilder: (context) => CustomDailogboxCompany(),
      ),
    );
  }
}
