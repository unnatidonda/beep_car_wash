import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class DrawerScreen extends StatelessWidget {
  final String? name;
  final String? image;
  final Color? color;
  final void Function()? onPress;
  const DrawerScreen({super.key, this.name, this.image, this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Row(
      children: [
        Image.asset(
          image ?? "",
          height: screenHeight / 10,
          width: screenWidth / 15,
        ),
        SizedBox(width: screenWidth / 40),
        TextButton(
          onPressed: onPress ?? () {},
          child: Text(
            name ?? "",
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.lightBlackColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
