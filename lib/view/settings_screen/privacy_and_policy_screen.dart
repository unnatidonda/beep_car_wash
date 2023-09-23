import 'package:beep_car_wash/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../../res/constant/app_strings.dart';

class PrivacyAndPolicyScreen extends StatefulWidget {
  const PrivacyAndPolicyScreen({super.key});

  @override
  State<PrivacyAndPolicyScreen> createState() => _PrivacyAndPolicyScreenState();
}

class _PrivacyAndPolicyScreenState extends State<PrivacyAndPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            BackButton(
              color: AppColors.lightBlackColor,
              style: ButtonStyle(
                iconSize: MaterialStatePropertyAll(22),
              ),
            ),
            Text(AppStrings.privacyAndPolicy)
          ],
        ),
      ),
    );
  }
}
