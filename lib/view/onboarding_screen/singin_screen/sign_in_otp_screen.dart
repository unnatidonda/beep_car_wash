import 'package:flutter/material.dart';

import '../../../res/constant/app_assets.dart';
import '../../../res/constant/app_colors.dart';
import '../../../res/constant/app_strings.dart';

class SignInOtpScreen extends StatefulWidget {
  const SignInOtpScreen({super.key});

  @override
  State<SignInOtpScreen> createState() => _SignInOtpScreenState();
}

class _SignInOtpScreenState extends State<SignInOtpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButton(
              style: ButtonStyle(
                iconSize: MaterialStatePropertyAll(22),
              ),
              color: AppColors.lightBlackColor,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                AppAssets.appPostOnline,
                height: screenWidth / 1.5,
                width: screenWidth / 1.5,
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                AppStrings.enterCode,
                style: TextStyle(
                  color: AppColors.lightBlackColor,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Align(
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                AppStrings.verification,
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
