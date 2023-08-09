import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../res/constant/app_assets.dart';
import '../../../res/constant/app_colors.dart';

class SigInScreen extends StatefulWidget {
  const SigInScreen({super.key});

  @override
  State<SigInScreen> createState() => _SigInScreenState();
}

class _SigInScreenState extends State<SigInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppAssets.appBeepText,
              height: screenWidth / 1.5,
              width: screenWidth / 3.5,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              textAlign: TextAlign.start,
              "Enter your phone number",
              style: TextStyle(
                color: AppColors.lightBlackColor,
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              textAlign: TextAlign.start,
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n sed do eiusmod tempor incididunt ut labore ...",
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: true,
                    keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                    inputBorder: OutlineInputBorder(),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      formKey.currentState?.validate();
                    },
                    child: Text('Validate'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getPhoneNumber('+15417543010');
                    },
                    child: Text('Update'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      formKey.currentState?.save();
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
//  SizedBox(height: 50),
// ElevatedButton(
//   style: ButtonStyle(
//     backgroundColor: const MaterialStatePropertyAll(AppColors.darkGreenColor),
//     fixedSize: MaterialStatePropertyAll(
//       Size(screenWidth / 0.1, screenHeight / 16),
//     ),
//     shape: MaterialStatePropertyAll(
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//     ),
//     // fixedSize: MaterialStatePropertyAll(
//     // Size(width: 10, height!),
//     // ),
//   ),
//   // onPressed: onPress ?? () {},
//   onPressed: () {},
//   child: const Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text(
//         "Continue",
//         style: TextStyle(
//           fontSize: 17,
//           color: AppColors.whiteColor,
//           fontWeight: FontWeight.w500,
//           fontFamily: "Poppins",
//         ),
//       ),
//     ],
//   ),
// ),
//  SizedBox(height: 20),
//  Text(
//   textAlign: TextAlign.start,
//   "Or Sign In With",
//   style: TextStyle(
//     color: AppColors.greyColor,
//     fontSize: 16,
//     fontFamily: "Poppins",
//     fontWeight: FontWeight.w500,
//   ),
// ),
// const SizedBox(height: 20),
// Container(
//   height: 56,
//   width: double.infinity,
//   decoration: BoxDecoration(
//     // color: AppColors.darkGreenColor,
//     borderRadius: BorderRadius.circular(12),
//     border: Border.all(
//       color: AppColors.darkGreenColor,
//       width: 2,
//     ),
//   ),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Image.asset(
//         AppAssets.appgoogle,
//         height: screenHeight / 30,
//         width: screenWidth / 7.5,
//       ),
//       const Text(
//         textAlign: TextAlign.center,
//         AppStrings.google,
//         style: TextStyle(
//           fontSize: 17,
//           color: AppColors.lightBlackColor,
//           fontWeight: FontWeight.w600,
//           fontFamily: "Poppins",
//         ),
//       ),
//     ],
//   ),
// ),
// const SizedBox(height: 20),
// Container(
//   height: 56,
//   width: double.infinity,
//   decoration: BoxDecoration(
//     // color: AppColors.darkGreenColor,
//     borderRadius: BorderRadius.circular(12),
//     border: Border.all(
//       color: AppColors.darkGreenColor,
//       width: 2,
//     ),
//   ),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Image.asset(
//         AppAssets.appgoogle,
//         height: screenHeight / 30,
//         width: screenWidth / 7.5,
//       ),
//       const Text(
//         textAlign: TextAlign.center,
//         AppStrings.facebook,
//         style: TextStyle(
//           fontSize: 17,
//           color: AppColors.lightBlackColor,
//           fontWeight: FontWeight.w600,
//           fontFamily: "Poppins",
//         ),
//       ),
//     ],
//   ),
// ),
// const SizedBox(height: 20),
// Container(
//   height: 56,
//   width: double.infinity,
//   decoration: BoxDecoration(
//     // color: AppColors.darkGreenColor,
//     borderRadius: BorderRadius.circular(12),
//     border: Border.all(
//       color: AppColors.darkGreenColor,
//       width: 2,
//     ),
//   ),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Image.asset(
//         AppAssets.appgoogle,
//         height: screenHeight / 30,
//         width: screenWidth / 7.5,
//       ),
//       const Text(
//         textAlign: TextAlign.center,
//         AppStrings.apple,
//         style: TextStyle(
//           fontSize: 17,
//           color: AppColors.lightBlackColor,
//           fontWeight: FontWeight.w600,
//           fontFamily: "Poppins",
//         ),
//       ),
//     ],
//   ),
//       ),
//     ],
//       //   ),
//       ),
//     );
//   }
// }
