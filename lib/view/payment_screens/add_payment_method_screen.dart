import 'package:beep_car_wash/res/constant/app_assets.dart';
import 'package:beep_car_wash/res/constant/app_colors.dart';
import 'package:beep_car_wash/res/constant/app_strings.dart';
import 'package:flutter/material.dart';

class AddPaymentMethodScreen extends StatefulWidget {
  const AddPaymentMethodScreen({super.key});

  @override
  State<AddPaymentMethodScreen> createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethodScreen> {
//   Future<void> _showMyDialog() async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('AlertDialog Title'),
//           content: const SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 Text('This is a demo alert dialog.'),
//                 Text('Would you like to approve of this message?'),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('Approve'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
  bool switchvalue = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                BackButton(
                  color: AppColors.lightBlackColor,
                  style: ButtonStyle(
                    iconSize: MaterialStatePropertyAll(24),
                  ),
                ),
                Text(
                  AppStrings.paymentMethod,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                const Text(
                  AppStrings.chooseAPaymentMethod,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 30),
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    border: Border.all(
                      color: AppColors.darkGreenColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 60),
                      Image.asset(
                        AppAssets.creditCard,
                        height: screenHeight / 25,
                        width: screenWidth / 10,
                      ),
                      const Text(
                        AppStrings.creditCard,
                        style: TextStyle(
                          color: AppColors.darkGreenColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenWidth / 30),
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 60),
                      Image.asset(
                        AppAssets.paypal,
                        height: screenHeight / 25,
                        width: screenWidth / 10,
                      ),
                      const Text(
                        AppStrings.payPal,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenWidth / 30),
                Container(
                  height: 110,
                  width: 118,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight / 60),
                      Image.asset(
                        AppAssets.appleLogo,
                        height: screenHeight / 25,
                        width: screenWidth / 10,
                      ),
                      const Text(
                        AppStrings.applePay,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 40),
                const Text(
                  AppStrings.cardNumber,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 25),
                Container(
                  height: screenHeight / 15,
                  width: screenWidth / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: AppColors.lightGrey,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: screenWidth / 30),
                      Text(
                        AppStrings.number,
                        style: TextStyle(
                          color: AppColors.lightBlackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: screenWidth / 4),
                      Image.asset(
                        AppAssets.logosVisa,
                        width: screenWidth / 8,
                        height: screenHeight / 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 40),
                const Text(
                  AppStrings.cardHolderName,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(21),
                  isDense: true,
                  hintText: "DD/MM/YYYY",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(14),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 40),
                const Text(
                  AppStrings.cVV,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.lightBlackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 40),
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(21),
                  isDense: true,
                  hintText: "Input CVV",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(14),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 40),
            Row(
              children: [
                SizedBox(width: screenWidth / 40),
                const Text(
                  AppStrings.primaryPayment,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.lightBlackColor,
                  ),
                ),
                SizedBox(width: screenWidth / 3),
                Switch(
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.green,
                  activeTrackColor: Colors.green,
                  hoverColor: Colors.green,
                  onChanged: (value) {
                    debugPrint("value ----> $value");
                    setState(() {
                      switchvalue = value;
                    });
                  },
                  value: switchvalue,
                ),
              ],
            ),
            // TextButton(
            //   onPressed: () => showDialog<String>(
            //     context: context,
            //     builder: (BuildContext context) => AlertDialog(
            //       title: const Text('AlertDialog Title'),
            //       content: const Text('AlertDialog description'),
            //       actions: <Widget>[
            //         TextButton(
            //           onPressed: () => Navigator.pop(context, 'Cancel'),
            //           child: const Text('Cancel'),
            //         ),
            //         TextButton(
            //           onPressed: () => Navigator.pop(context, 'OK'),
            //           child: const Text('OK'),
            //         ),
            //       ],
            //     ),
            //   ),
            //   child: const Text('Show Dialog'),
            // ),
          ],
        ),
      ),
    );
  }
}
