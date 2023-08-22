import 'package:flutter/material.dart';

import '../../res/common/drawer_screens.dart';
import '../../res/constant/app_assets.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';
import '../wash_history_screen/wash_history_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight / 15),
              const Text(
                AppStrings.helloMartin,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkGreenColor,
                  fontSize: 28,
                ),
              ),
              const DrawerScreen(
                name: AppStrings.findABeep,
                image: AppAssets.findABeep,
                color: AppColors.lightBlackColor,
              ),
              DrawerScreen(
                name: AppStrings.washHistory,
                image: AppAssets.washHistory,
                color: AppColors.greyColor,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WashHistoryScreen(),
                    ),
                  );
                },
              ),
              const DrawerScreen(
                name: AppStrings.payments,
                image: AppAssets.payments,
                color: AppColors.greyColor,
              ),
              const DrawerScreen(
                name: AppStrings.notifications,
                image: AppAssets.notifications,
                color: AppColors.lightBlackColor,
              ),
              const DrawerScreen(
                name: AppStrings.works,
                image: AppAssets.howItWorks,
                color: AppColors.lightBlackColor,
              ),
              const DrawerScreen(
                name: AppStrings.settings,
                image: AppAssets.settings,
                color: AppColors.lightBlackColor,
              ),
              const DrawerScreen(
                name: AppStrings.refer,
                image: AppAssets.gift,
                color: AppColors.darkGreenColor,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                AppAssets.paymentImage,
                width: screenWidth / 0.5,
                height: screenHeight / 1.8,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                          icon: const Icon(
                            Icons.menu,
                            size: 35,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        SizedBox(width: screenWidth / 40),
                        const Text(
                          AppStrings.payments,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: screenWidth / 2),
                        Image.asset(
                          AppAssets.pencilMinus,
                          width: screenWidth / 15,
                          height: screenHeight / 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  const Text(
                    AppStrings.us,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Text(
                    AppStrings.currentBalance,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset(
                    AppAssets.card,
                    width: screenWidth / 1.3,
                    height: screenHeight / 3.6,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                AppAssets.
              )
            ],
          ),
        ],
      ),
    );
  }
}
