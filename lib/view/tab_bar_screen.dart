import 'package:beep_car_wash/view/payment_screens/payment_screen.dart';
import 'package:beep_car_wash/view/wash_history_screen/wash_history_screen.dart';
import 'package:flutter/material.dart';

import '../res/common/drawer_screens.dart';
import '../res/constant/app_assets.dart';
import '../res/constant/app_colors.dart';
import '../res/constant/app_strings.dart';
import 'how_it_works/how_it_works_screen.dart';
import 'notifications_screen/notification_screen.dart';

void main() {
  runApp(const TabBarDemo());
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
Map mapdata = {
  "text": "",
};

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
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
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentScreen(),
                        ),
                      );
                    },
                    color: AppColors.greyColor,
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
          appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    AppStrings.referOperator,
                    style: TextStyle(
                      color: AppColors.darkGreenColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    AppStrings.inviteFriends,
                    style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text(
              AppStrings.referral,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.lightBlackColor,
                fontSize: 20,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Image.asset(
                    AppAssets.undrawGift,
                    height: screenHeight / 4.5,
                    // width: screenWidth / 5.5,
                  ),
                  SizedBox(height: screenHeight / 60),
                  const Text(
                    AppStrings.spreadTheWealth,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: AppColors.lightBlackColor,
                    ),
                  ),
                  SizedBox(height: screenHeight / 70),
                  const Text(
                    textAlign: TextAlign.center,
                    AppStrings.operator,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppColors.greyColor,
                    ),
                  )
                ],
              ),
              const Icon(
                Icons.directions_transit,
                color: AppColors.lightBlackColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}