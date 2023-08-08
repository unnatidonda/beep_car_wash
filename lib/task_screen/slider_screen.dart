import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _currentSliderValue = 20;

  // get _currentSlid => _currentSlid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slider(
        // value: _currentSlid,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
        value: 80,
      ),
    );
  }
}
