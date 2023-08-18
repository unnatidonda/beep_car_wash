import 'package:flutter/material.dart';

import '../../res/constant/app_assets.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';

class BillingScreen extends StatefulWidget {
  const BillingScreen({super.key});

  @override
  State<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                BackButton(
                  color: AppColors.lightBlackColor,
                  style: ButtonStyle(
                    iconSize: MaterialStatePropertyAll(22),
                  ),
                ),
                Text(
                  AppStrings.billing,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                AppStrings.washCompleted,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: AppColors.lightBlackColor,
                ),
              ),
            ),
            SizedBox(height: screenHeight / 70),
            const Align(
              alignment: Alignment.center,
              child: Text(
                AppStrings.time,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greyColor,
                ),
              ),
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 20),
                Container(
                  height: 143,
                  width: 180,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.clock,
                        height: screenHeight / 15,
                        width: screenWidth / 10,
                      ),
                      const Text(
                        AppStrings.clock,
                        style: TextStyle(
                          color: AppColors.lightBlackColor,
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenWidth / 20),
                Container(
                  height: 143,
                  width: 180,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.wallet,
                        height: screenHeight / 15,
                        width: screenWidth / 10,
                      ),
                      const Text(
                        AppStrings.wallet,
                        style: TextStyle(
                          color: AppColors.lightBlackColor,
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
