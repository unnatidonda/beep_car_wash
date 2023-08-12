import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                  AppStrings.timer,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 32),
            const Text(
              textAlign: TextAlign.center,
              AppStrings.minutes,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: AppColors.lightBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
