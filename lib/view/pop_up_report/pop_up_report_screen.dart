import 'package:beep_car_wash/res/constant/app_colors.dart';
import 'package:beep_car_wash/res/constant/app_strings.dart';
import 'package:flutter/material.dart';

import '../../res/constant/app_assets.dart';

class PopUpReportScreen extends StatefulWidget {
  const PopUpReportScreen({super.key});

  @override
  State<PopUpReportScreen> createState() => _PopUpReportScreenState();
}

class _PopUpReportScreenState extends State<PopUpReportScreen> {
  int? radiobutton = 0;
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
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                const Text(
                  AppStrings.report,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColors.lightBlackColor,
                  ),
                ),
                SizedBox(width: screenWidth / 1.5),
                const CloseButton(
                  color: AppColors.lightBlackColor,
                  style: ButtonStyle(
                    iconSize: MaterialStatePropertyAll(25),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                AppStrings.whatissueareyoufacing,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: AppColors.lightBlackColor,
                ),
              ),
            ),
            Row(
              children: [
                Radio(
                    activeColor: AppColors.darkGreenColor,
                    hoverColor: AppColors.darkGreenColor,
                    focusColor: AppColors.darkGreenColor,
                    // overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFFE19595)),
                    fillColor: MaterialStateColor.resolveWith((states) => AppColors.darkGreenColor),
                    value: 1,
                    groupValue: radiobutton,
                    onChanged: (value) {
                      radiobutton = value;
                      debugPrint("value ----> $value");
                      setState(() {});
                    }),
                const Text(
                  AppStrings.waterpump,
                  style: TextStyle(
                    color: AppColors.lightBlackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                    activeColor: AppColors.darkGreenColor,
                    hoverColor: AppColors.darkGreenColor,
                    focusColor: AppColors.darkGreenColor,
                    // overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFFE19595)),
                    fillColor: MaterialStateColor.resolveWith((states) => AppColors.darkGreenColor),
                    value: 2,
                    groupValue: radiobutton,
                    onChanged: (value) {
                      radiobutton = value!;
                      debugPrint("value ----> $value");
                      setState(() {});
                    }),
                const Text(
                  AppStrings.airblower,
                  style: TextStyle(
                    color: AppColors.lightBlackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                    activeColor: AppColors.darkGreenColor,
                    hoverColor: AppColors.darkGreenColor,
                    focusColor: AppColors.darkGreenColor,
                    // overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFFE19595)),
                    fillColor: MaterialStateColor.resolveWith((states) => AppColors.darkGreenColor),
                    value: 3,
                    groupValue: radiobutton,
                    onChanged: (value) {
                      radiobutton = value!;
                      debugPrint("value ----> $value");
                      setState(() {});
                    }),
                const Text(
                  AppStrings.vaccum,
                  style: TextStyle(
                    color: AppColors.lightBlackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                    activeColor: AppColors.darkGreenColor,
                    hoverColor: AppColors.darkGreenColor,
                    focusColor: AppColors.darkGreenColor,
                    // overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFFE19595)),
                    fillColor: MaterialStateColor.resolveWith((states) => AppColors.darkGreenColor),
                    value: 4,
                    groupValue: radiobutton,
                    onChanged: (value) {
                      radiobutton = value!;
                      debugPrint("value ----> $value");
                      setState(() {});
                    }),
                const Text(
                  AppStrings.machine,
                  style: TextStyle(
                    color: AppColors.lightBlackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                    activeColor: AppColors.darkGreenColor,
                    hoverColor: AppColors.darkGreenColor,
                    focusColor: AppColors.darkGreenColor,
                    // overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFFE19595)),
                    fillColor: MaterialStateColor.resolveWith((states) => AppColors.darkGreenColor),
                    value: 5,
                    groupValue: radiobutton,
                    onChanged: (value) {
                      radiobutton = value!;
                      debugPrint("value ----> $value");
                      setState(() {});
                    }),
                const Text(
                  AppStrings.otherissue,
                  style: TextStyle(
                    color: AppColors.lightBlackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                AppStrings.attachphoto,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: AppColors.lightBlackColor,
                ),
              ),
            ),
            SizedBox(height: screenHeight / 60),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                Container(
                  height: 58,
                  width: 380,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: screenWidth / 40),
                      Image.asset(
                        AppAssets.photo,
                        height: screenHeight / 2,
                        width: screenWidth / 10,
                      ),
                      SizedBox(width: screenWidth / 1.7),
                      Text(
                        AppStrings.upload,
                        style: TextStyle(
                          color: AppColors.darkGreenColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  AppStrings.writecomment,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
