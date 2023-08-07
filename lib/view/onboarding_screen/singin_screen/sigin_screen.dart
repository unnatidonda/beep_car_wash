import 'package:flutter/material.dart';

class SigInScreen extends StatefulWidget {
  const SigInScreen({super.key});

  @override
  State<SigInScreen> createState() => _SigInScreenState();
}

class _SigInScreenState extends State<SigInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/beep_text.png",
                height: screenWidth / 1.5,
                width: screenWidth / 3.5,
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.start,
                "Enter your phone number",
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.start,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n sed do eiusmod tempor incididunt ut labore ...",
                style: TextStyle(
                  color: Color(0xFF898989),
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        isDense: true,
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(14),
                          child: Row(
                            children: [
                              // Image.asset(
                              //   "assets/images/calendar.png",
                              //   height: 26,
                              //   width: 26,
                              // ),
                              SizedBox(width: 20),
                              Text(
                                "Month / Year",
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        isDense: true,
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock_outline_rounded,
                                color: Color(0xFF9E9E9E),
                                size: 25,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "CVV",
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontFamily: "Poppins",
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
            ),
          ],
        ),
      ),
    );
  }
}
