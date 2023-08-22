import 'package:beep_car_wash/res/constant/app_assets.dart';
import 'package:beep_car_wash/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../../res/common/drawer_screens.dart';
import '../../res/constant/app_strings.dart';
import '../payment_screens/payment_screen.dart';
import '../wash_history_screen/wash_history_screen.dart';

class FindMachine extends StatefulWidget {
  const FindMachine({super.key});

  @override
  State<FindMachine> createState() => _FindMachineState();
}

class _FindMachineState extends State<FindMachine> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WashHistoryScreen(),
                    ),
                  );
                },
                color: AppColors.greyColor,
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
      body: Stack(
        children: [
          Image.asset(
            AppAssets.appMap,
            width: screenHeight,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: IconButton(
                  onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                  icon: const Icon(
                    Icons.menu,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: screenWidth / 2.7),
              Image.asset(
                AppAssets.appBeepText,
                width: 115,
                height: 140,
              ),
              SizedBox(width: screenWidth / 4.7),
              Image.asset(
                AppAssets.beepLocation,
                width: 50,
                height: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
