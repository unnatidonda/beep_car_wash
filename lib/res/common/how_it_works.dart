import 'package:flutter/material.dart';

import '../constant/app_assets.dart';
import '../constant/app_colors.dart';
import '../constant/app_strings.dart';

class HowItWorks extends StatelessWidget {
  final String? image;
  final String? text;
  final String? name;
  const HowItWorks({super.key, this.image, this.text, this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Column(
      children: [
        Column(
          children: [
            Image.asset(
              AppAssets.scanning,
              height: screenHeight / 6,
              width: screenWidth / 3,
            ),
            SizedBox(width: screenWidth / 12),
            const Padding(
              padding: EdgeInsets.only(left: 26),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  AppStrings.scanning,
                  style: TextStyle(
                    color: AppColors.lightBlackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: screenWidth / 20),
                Image.asset(
                  AppAssets.circleCheck,
                  width: screenWidth / 12,
                  height: screenHeight / 17,
                ),
                SizedBox(width: screenWidth / 40),
                const Text(
                  AppStrings.blueTickSecond,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greyColor,
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
