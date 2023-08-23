import 'package:beep_car_wash/res/constant/app_assets.dart';
import 'package:beep_car_wash/res/constant/app_colors.dart';
import 'package:beep_car_wash/res/constant/app_strings.dart';
import 'package:flutter/material.dart';

class AddPaymentMethodScreen extends StatefulWidget {
  const AddPaymentMethodScreen({super.key});

  @override
  State<AddPaymentMethodScreen> createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethodScreen> {
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
            const Row(
              children: [
                BackButton(
                  color: AppColors.lightBlackColor,
                  style: ButtonStyle(
                    iconSize: MaterialStatePropertyAll(24),
                  ),
                ),
                Text(
                  AppStrings.paymentMethod,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                const Text(
                  AppStrings.chooseAPaymentMethod,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    border: Border.all(
                      color: AppColors.darkGreenColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 60),
                      Image.asset(
                        AppAssets.creditCard,
                        height: screenHeight / 25,
                        width: screenWidth / 10,
                      ),
                      const Text(
                        AppStrings.creditCard,
                        style: TextStyle(
                          color: AppColors.darkGreenColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenWidth / 30),
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 60),
                      Image.asset(
                        AppAssets.paypal,
                        height: screenHeight / 25,
                        width: screenWidth / 10,
                      ),
                      const Text(
                        AppStrings.payPal,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenWidth / 30),
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight / 60),
                      Image.asset(
                        AppAssets.appleLogo,
                        height: screenHeight / 25,
                        width: screenWidth / 10,
                      ),
                      const Text(
                        AppStrings.applePay,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 40),
                const Text(
                  AppStrings.cardNumber,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.lightBlackColor,
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
