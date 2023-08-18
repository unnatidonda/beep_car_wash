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
                      const Text(
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
              ],
            ),
            SizedBox(height: screenHeight / 60),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                AppStrings.writecomment,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.lightBlackColor,
                ),
              ),
            ),
            // SizedBox(height: screenHeight / 40),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(30),
                  isDense: true,
                  hintText: "Input Text",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(14),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 5.7),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                // OutlinedButton(
                //
                //   onPressed: () {},
                //   child: const Text(
                //     AppStrings.cancel,
                //     style: TextStyle(
                //       color: AppColors.darkGreenColor,
                //       fontWeight: FontWeight.w600,
                //       fontSize: 17,
                //     ),
                //   ),
                // ),
                Container(
                  height: 56,
                  width: 180,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      textAlign: TextAlign.center,
                      AppStrings.cancel,
                      style: TextStyle(
                        color: AppColors.darkGreenColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: screenWidth / 40),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
                    fixedSize: MaterialStatePropertyAll(
                      Size(screenWidth / 2, screenHeight / 16),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                        textAlign: TextAlign.center,
                        AppStrings.submit,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
