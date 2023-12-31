import 'package:flutter/material.dart';

import '../../res/constant/app_assets.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: devicePadding,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
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
                    AppStrings.feedback,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.lightBlackColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 50),
              const Text(
                textAlign: TextAlign.start,
                AppStrings.giveFeedback,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: AppColors.lightBlackColor,
                ),
              ),
              SizedBox(height: screenHeight / 50),
              const Text(
                textAlign: TextAlign.start,
                AppStrings.howDidWeDo,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: AppColors.lightBlackColor,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    AppAssets.tablerStar,
                    height: screenWidth / 3.5,
                    width: screenWidth / 8.5,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    AppAssets.tablerStar,
                    height: screenWidth / 3.5,
                    width: screenWidth / 8.5,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    AppAssets.tablerStar,
                    height: screenWidth / 3.5,
                    width: screenWidth / 8.5,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    AppAssets.tablerStar,
                    height: screenWidth / 3.5,
                    width: screenWidth / 8.5,
                    color: AppColors.lightGrey,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    AppAssets.tablerStar,
                    height: screenWidth / 3.5,
                    width: screenWidth / 8.5,
                    color: AppColors.lightGrey,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 104,
                    decoration: BoxDecoration(
                      color: AppColors.lightGreen,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                        textAlign: TextAlign.center,
                        AppStrings.goodLocation,
                        style: TextStyle(
                          color: AppColors.darkGreenColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth / 30),
                  Container(
                    height: 40,
                    width: 87,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColors.lightGrey,
                          width: 2,
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                        textAlign: TextAlign.center,
                        AppStrings.easyToUse,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth / 30),
                  Container(
                    height: 40,
                    width: 51,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColors.lightGrey,
                          width: 2,
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                        textAlign: TextAlign.center,
                        AppStrings.clean,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 50),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 98,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColors.lightGrey,
                          width: 2,
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                        textAlign: TextAlign.center,
                        AppStrings.friendly,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth / 30),
                  Container(
                    height: 40,
                    width: 77,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColors.lightGrey,
                          width: 2,
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                        textAlign: TextAlign.center,
                        AppStrings.bestPrice,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 40),
              const Text(
                AppStrings.comment,
                style: TextStyle(
                  color: AppColors.lightBlackColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: screenHeight / 40),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  isDense: true,
                  hintText: "Write a comment",
                  // hintStyle: TextStyle(
                  //   color: AppColors.greyColor,
                  //   fontWeight: FontWeight.w500,
                  //   fontSize: 15,
                  //   fontFamily: "Poppins",
                  // ),
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
              SizedBox(height: screenHeight / 3.2),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
                  fixedSize: MaterialStatePropertyAll(
                    Size(screenWidth / 0.1, screenHeight / 16),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
                      AppStrings.publish,
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
        ),
      ),
    );
  }
}
