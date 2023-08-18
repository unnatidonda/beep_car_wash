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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 30),
            const Divider(
              height: 2,
              color: AppColors.lightGrey,
              thickness: 2,
            ),
            SizedBox(height: screenHeight / 60),
            Row(
              children: [
                SizedBox(width: screenWidth / 50),
                const Icon(
                  Icons.location_on_outlined,
                  color: AppColors.greyColor,
                  size: 28,
                ),
                const Text(
                  AppStrings.location,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.lightBlackColor,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                AppAssets.location,
                height: screenHeight / 3.5,
                width: screenWidth / 1,
              ),
            ),
            SizedBox(height: screenHeight / 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(width: screenWidth / 30),
                Container(
                  height: 58,
                  width: 380,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      AppStrings.applyCoupon,
                      style: TextStyle(
                        color: AppColors.darkGreenColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
                  fixedSize: MaterialStatePropertyAll(
                    Size(screenWidth / 0.1, screenHeight / 16),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                // onPressed: onPress ?? () {},
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      AppStrings.continuebeep,
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
