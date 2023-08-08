import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerScreen extends StatefulWidget {
  const CupertinoPickerScreen({super.key});

  @override
  State<CupertinoPickerScreen> createState() => _CupertinoPickerScreenState();
}

int _selectedValue = 0;
void _showPicker(BuildContext ctx) {
  showCupertinoModalPopup(
      context: ctx,
      builder: (_) => SizedBox(
            width: 300,
            height: 250,
            child: CupertinoPicker(
              backgroundColor: Colors.white,
              itemExtent: 30,
              scrollController: FixedExtentScrollController(initialItem: 1),
              children: const [
                Text('0'),
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
                Text('5'),
              ],
              onSelectedItemChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
          ));
}

void setState(Null Function() param0) {}

class _CupertinoPickerScreenState extends State<CupertinoPickerScreen> {
  get _selectedFruit => 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CupertinoButton(
                child: const Text('Show The Cupertino Picker'),
                onPressed: () => _showPicker(context),
              ),
              const SizedBox(height: 30),
              Text('Value: $_selectedValue'),
            ],
          ),
        ),
      ),
    );
  }
}
