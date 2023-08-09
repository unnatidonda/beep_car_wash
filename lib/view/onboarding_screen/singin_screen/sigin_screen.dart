import 'package:flutter/material.dart';

import '../../../res/constant/app_assets.dart';
import '../../../res/constant/app_colors.dart';
import '../../../res/constant/app_strings.dart';

class SigInScreen extends StatefulWidget {
  const SigInScreen({super.key});

  @override
  State<SigInScreen> createState() => _SigInScreenState();
}

class _SigInScreenState extends State<SigInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                AppAssets.appBeepText,
                height: screenWidth / 1.5,
                width: screenWidth / 3.5,
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.start,
                "Enter your phone number",
                style: TextStyle(
                  color: AppColors.lightBlackColor,
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.start,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n sed do eiusmod tempor incididunt ut labore ...",
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
                fixedSize: MaterialStatePropertyAll(
                  Size(screenWidth / 0.1, screenHeight / 16),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                // fixedSize: MaterialStatePropertyAll(
                // Size(width: 10, height!),
                // ),
              ),
              // onPressed: onPress ?? () {},
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Continue",
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
            const SizedBox(height: 20),
            const Text(
              textAlign: TextAlign.start,
              "Or Sign In With",
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: AppColors.darkGreenColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.darkGreenColor,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.appgoogle,
                    height: screenHeight / 30,
                    width: screenWidth / 7.5,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    AppStrings.google,
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.lightBlackColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: AppColors.darkGreenColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.darkGreenColor,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.appgoogle,
                    height: screenHeight / 30,
                    width: screenWidth / 7.5,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    AppStrings.google,
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.lightBlackColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: AppColors.darkGreenColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.darkGreenColor,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.appgoogle,
                    height: screenHeight / 30,
                    width: screenWidth / 7.5,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    AppStrings.google,
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.lightBlackColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
