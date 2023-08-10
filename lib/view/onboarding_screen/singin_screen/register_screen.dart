import 'package:flutter/material.dart';

import '../../../res/constant/app_assets.dart';
import '../../../res/constant/app_colors.dart';
import '../../../res/constant/app_strings.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    bool checkbox = true;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackButton(
                    style: ButtonStyle(
                      iconSize: MaterialStatePropertyAll(22),
                    ),
                    color: AppColors.lightBlackColor,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AppAssets.appBeepText,
                      height: screenWidth / 3.5,
                      width: screenWidth / 3.5,
                    ),
                  ),
                  const Text(
                    AppStrings.CreateyourAccount,
                    style: TextStyle(
                      color: AppColors.lightBlackColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 25),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        isDense: true,
                        hintText: "First Name",
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
                  ),
                  SizedBox(height: 25),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        isDense: true,
                        hintText: "Last Name",
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
                  ),
                  SizedBox(height: 25),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        isDense: true,
                        hintText: "Email",
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
                  ),
                  SizedBox(height: 240),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: AppColors.darkGreenColor,
                        onChanged: (value) {
                          debugPrint("value ----> $value");
                          setState(() {
                            checkbox = value!;
                          });
                        },
                        value: checkbox,
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          text: "By creating an account you agree to beep ",
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 15,
                          ),
                          children: [
                            TextSpan(
                              text: " Terms\n of Service and Privacy Policy",
                              style: TextStyle(
                                color: AppColors.darkGreenColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
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
                          AppStrings.continuebeep,
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
          ],
        ),
      ),
    );
  }
}
