import 'package:flutter/material.dart';

import '../../res/common/drawer_screens.dart';
import '../../res/constant/app_assets.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';

class WashHistoryScreen extends StatefulWidget {
  const WashHistoryScreen({super.key});

  @override
  State<WashHistoryScreen> createState() => _WashHistoryScreenState();
}

class _WashHistoryScreenState extends State<WashHistoryScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Map mapdata = {
    "text": "",
  };

  List<Map<String, dynamic>> colortextList = [
    {
      "text": "",
      "image": AppAssets.washHistoryImage,
    },
    {
      "text": "",
      "image": AppAssets.washHistoryImage,
    },
    {
      "text": "white color",
      "image": AppAssets.washHistoryImage,
    },
    {
      "text": "white color",
      "image": AppAssets.washHistoryImage,
    },
    {
      "color": Colors.white,
      "text": "",
      "image": AppAssets.washHistoryImage,
    },
    {
      "text": "",
      "image": AppAssets.washHistoryImage,
    },
    {
      "text": "",
      "image": AppAssets.washHistoryImage,
    },
  ];

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
              const DrawerScreen(
                name: AppStrings.washHistory,
                image: AppAssets.washHistory,
                color: AppColors.greyColor,
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
                      ),
                    ),
                    SizedBox(width: screenWidth / 40),
                    const Text(
                      AppStrings.washHistory,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.lightBlackColor,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: AppColors.darkGreenColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              SizedBox(width: screenWidth / 20),
                              const Text(
                                AppStrings.washTime,
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight / 50),
                          Container(
                            width: 351,
                            height: 94,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.lightGrey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        colortextList[index]["image"],
                                        width: screenWidth / 5.6,
                                        height: screenHeight / 18,
                                      ),
                                      const Text(
                                        AppStrings.minTime,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17,
                                          color: AppColors.lightBlackColor,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth / 3.5),
                                      const Text(
                                        AppStrings.price,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17,
                                          color: AppColors.darkGreenColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: screenWidth / 5.5),
                                      Image.asset(
                                        AppAssets.mapPin,
                                        width: screenWidth / 20,
                                        height: 30,
                                      ),
                                      SizedBox(width: screenWidth / 50),
                                      const Text(
                                        AppStrings.newYork,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: AppColors.greyColor,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
