import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class HowItWorks extends StatelessWidget {
  final String? image;
  final String? mainImage;
  final String? mainName;
  final String? name;
  final String? secondName;
  const HowItWorks({super.key, this.image, this.mainName, this.name, this.mainImage, this.secondName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Column(
      children: [
        Column(
          children: [
            Image.asset(
              mainImage ?? "",
              height: screenHeight / 6,
              width: screenWidth / 3,
            ),
            SizedBox(width: screenWidth / 12),
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  mainName ?? "",
                  style: const TextStyle(
                    color: AppColors.lightBlackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: screenWidth / 20),
                Image.asset(
                  image ?? "",
                  width: screenWidth / 12,
                  height: screenHeight / 17,
                ),
                SizedBox(width: screenWidth / 40),
                Text(
                  name ?? "",
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greyColor,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: screenWidth / 20),
                Image.asset(
                  image ?? "",
                  width: screenWidth / 12,
                  height: screenHeight / 17,
                ),
                SizedBox(width: screenWidth / 40),
                Text(
                  secondName ?? "",
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greyColor,
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
