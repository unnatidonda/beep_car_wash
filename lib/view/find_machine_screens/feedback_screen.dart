import 'package:flutter/material.dart';

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
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.start,
                AppStrings.giveFeedback,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: AppColors.lightBlackColor,
                ),
              ),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.start,
                AppStrings.howDidWeDo,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: AppColors.lightBlackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
