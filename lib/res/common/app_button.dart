import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class StartedContainer extends StatelessWidget {
  final String? elevated;
  final IconData? icon;
  final double? radius;
  // final double? width;
  // final double? height;
  final void Function()? onPress;
  final String? name;
  const StartedContainer({Key? key, this.name, this.elevated, this.icon, this.radius, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
          // fixedSize: MaterialStatePropertyAll(
          //   Size(screenWidth / 0.1, screenHeight / 16),
          // ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          // fixedSize: MaterialStatePropertyAll(
          // Size(width: 10, height!),
          // ),
        ),
        onPressed: onPress ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              elevated ?? "",
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
            if (icon != null)
              Icon(
                icon!,
                color: Colors.white,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }
}
