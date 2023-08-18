import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';

class PopUpAddMachine extends StatefulWidget {
  const PopUpAddMachine({super.key});

  @override
  State<PopUpAddMachine> createState() => _PopUpAddMachineState();
}

class _PopUpAddMachineState extends State<PopUpAddMachine> {
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
            SizedBox(height: screenHeight / 50),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                const Text(
                  AppStrings.machinecode,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColors.lightBlackColor,
                  ),
                ),
                SizedBox(width: screenWidth / 2.8),
                const CloseButton(
                  color: AppColors.lightBlackColor,
                  style: ButtonStyle(
                    iconSize: MaterialStatePropertyAll(25),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                AppStrings.beepCodeToStart,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: AppColors.lightBlackColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  isDense: true,
                  hintText: "Enter Code",
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
            SizedBox(height: screenHeight / 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
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
                      AppStrings.verifyNumber,
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
            ),
          ],
        ),
      ),
    );
  }
}
