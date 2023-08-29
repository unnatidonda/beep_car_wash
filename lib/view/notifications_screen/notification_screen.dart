import 'package:beep_car_wash/res/common/drawer_screens.dart';
import 'package:beep_car_wash/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../../res/constant/app_assets.dart';
import '../../res/constant/app_strings.dart';
import '../payment_screens/payment_screen.dart';
import '../wash_history_screen/wash_history_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
              DrawerScreen(
                name: AppStrings.payments,
                image: AppAssets.payments,
                color: AppColors.greyColor,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentScreen(),
                    ),
                  );
                },
              ),
              DrawerScreen(
                name: AppStrings.notifications,
                image: AppAssets.notifications,
                color: AppColors.lightBlackColor,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationScreen(),
                    ),
                  );
                },
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
      body: Stack(
        children: [
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
                        color: AppColors.lightBlackColor,
                      ),
                    ),
                    SizedBox(width: screenWidth / 40),
                    const Text(
                      AppStrings.notifications,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.lightBlackColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: screenWidth / 2),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    color: AppColors.lightGreen,
                    height: screenHeight / 3.5,
                    width: screenWidth / 1,
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight / 70),
                        Row(
                          children: [
                            SizedBox(width: screenWidth / 20),
                            const Text(
                              AppStrings.superDeal,
                              style: TextStyle(
                                color: AppColors.darkGreenColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: screenWidth / 2.2),
                            const Text(
                              AppStrings.sepDate,
                              style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight / 40),
                        const Text(
                          AppStrings.superDealBestDeal,
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: screenHeight / 40),
                        Image.asset(
                          AppAssets.superDeal,
                          height: screenHeight / 7.4,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 4,
                color: AppColors.lightGrey,
              ),
              Column(
                children: [
                  SizedBox(height: screenHeight / 70),
                  Row(
                    children: [
                      SizedBox(width: screenWidth / 20),
                      const Text(
                        AppStrings.bestDeal,
                        style: TextStyle(
                          color: AppColors.darkGreenColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: screenWidth / 2.2),
                      const Text(
                        AppStrings.sepDate,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight / 40),
                  const Text(
                    AppStrings.superDealBestDeal,
                    style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  Image.asset(
                    AppAssets.bestDeal,
                    height: screenHeight / 7.4,
                  ),
                  SizedBox(height: screenHeight / 30),
                  Divider(
                    height: 4,
                    color: AppColors.lightGrey,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
