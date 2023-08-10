import 'package:flutter/material.dart';

import '../../../res/constant/app_colors.dart';

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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackButton(
            style: ButtonStyle(
              iconSize: MaterialStatePropertyAll(22),
            ),
            color: AppColors.lightBlackColor,
          ),
        ],
      ),
    );
  }
}
