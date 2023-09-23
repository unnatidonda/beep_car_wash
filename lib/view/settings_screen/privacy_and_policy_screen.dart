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
            Text(
              AppStrings.privacyAndPolicy,
              style: TextStyle(
                color: AppColors.lightBlackColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: screenWidth / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: screenWidth / 40),
            const Text(
              AppStrings.lorenIpsum,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.lightBlackColor,
              ),
            ),
            const Text(
              AppStrings.lonren,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: screenHeight / 40),
            const Text(
              AppStrings.ipsum,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.lightBlackColor,
              ),
            ),
            const Text(
              AppStrings.lonren,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: screenHeight / 40),
            const Text(
              textAlign: TextAlign.start,
              AppStrings.lonrenIpsum,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
