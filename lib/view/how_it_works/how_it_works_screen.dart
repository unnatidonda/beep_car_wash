import 'package:flutter/material.dart';

import '../../res/common/drawer_screens.dart';
import '../../res/constant/app_assets.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';
import '../notifications_screen/notification_screen.dart';
import '../payment_screens/payment_screen.dart';
import '../wash_history_screen/wash_history_screen.dart';

class HowItWorksScreen extends StatefulWidget {
  const HowItWorksScreen({super.key});

  @override
  State<HowItWorksScreen> createState() => _HowItWorksScreenState();
}

class _HowItWorksScreenState extends State<HowItWorksScreen> {
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
        children: [],
      ),
    );
  }
}
