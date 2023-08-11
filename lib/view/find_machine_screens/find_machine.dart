import 'package:beep_car_wash/res/constant/app_assets.dart';
import 'package:flutter/material.dart';

class FindMachine extends StatefulWidget {
  const FindMachine({super.key});

  @override
  State<FindMachine> createState() => _FindMachineState();
}

class _FindMachineState extends State<FindMachine> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                AppAssets.appMap,
                width: screenHeight,
              ),
              Center(
                child: _widgetOptions[_selectedIndex],
              ),
              Drawer(
                // Add a ListView to the drawer. This ensures the user can scroll
                // through the options in the drawer if there isn't enough vertical
                // space to fit everything.
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text('Drawer Header'),
                    ),
                    ListTile(
                      title: const Text('Home'),
                      selected: _selectedIndex == 0,
                      onTap: () {
                        // Update the state of the app
                        _onItemTapped(0);
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('Business'),
                      selected: _selectedIndex == 1,
                      onTap: () {
                        // Update the state of the app
                        _onItemTapped(1);
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('School'),
                      selected: _selectedIndex == 2,
                      onTap: () {
                        // Update the state of the app
                        _onItemTapped(2);
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
