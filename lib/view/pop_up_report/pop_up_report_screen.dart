import 'package:beep_car_wash/res/constant/app_colors.dart';
import 'package:beep_car_wash/res/constant/app_strings.dart';
import 'package:flutter/material.dart';

class PopUpReportScreen extends StatefulWidget {
  const PopUpReportScreen({super.key});

  @override
  State<PopUpReportScreen> createState() => _PopUpReportScreenState();
}

class _PopUpReportScreenState extends State<PopUpReportScreen> {
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
          children: [
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                Text(
                  AppStrings.report,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColors.lightBlackColor,
                  ),
                ),
                SizedBox(width: screenWidth / 1.5),
                CloseButton(
                  color: AppColors.lightBlackColor,
                  style: ButtonStyle(
                    iconSize: MaterialStatePropertyAll(25),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
