import 'package:flutter/material.dart';

import '../../res/common/drawer_screens.dart';
import '../../res/constant/app_assets.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';
import '../how_it_works/how_it_works_screen.dart';
import '../notifications_screen/notification_screen.dart';
import '../payment_screens/payment_screen.dart';
import '../wash_history_screen/wash_history_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
                DrawerScreen(
                  name: AppStrings.works,
                  image: AppAssets.howItWorks,
                  color: AppColors.lightBlackColor,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HowItWorksScreen(),
                      ),
                    );
                  },
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
                            AppStrings.setting,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: screenWidth / 2),
                          const Text(
                            AppStrings.save,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
