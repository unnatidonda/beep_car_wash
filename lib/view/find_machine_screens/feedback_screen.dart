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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
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
              const SizedBox(height: 20),
              const Text(
                textAlign: TextAlign.start,
                AppStrings.giveFeedback,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: AppColors.lightBlackColor,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                textAlign: TextAlign.start,
                AppStrings.howDidWeDo,
                style: TextStyle(
                  fontSize: 22,
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
                  const SizedBox(width: 10),
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
                  const SizedBox(width: 10),
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
