import 'package:beep_car_wash/res/constant/app_assets.dart';
import 'package:beep_car_wash/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../../res/constant/app_strings.dart';

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
      drawer: new Drawer(
        child: Column(
          children: [
            Text(
              AppStrings.helloMartin,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.darkGreenColor,
                fontSize: 28,
              ),
            ),
          ],
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
                  icon: Icon(
                    Icons.menu,
                    size: 35,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );

    // Scaffold(
    //   body: Column(
    //     children: [
    //       Stack(
    //         children: [
    //           Image.asset(
    //             AppAssets.appMap,
    //             width: screenHeight,
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
