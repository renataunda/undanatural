import 'package:flutter/material.dart';
import 'package:undanaturalinventory/Helpers.dart';
import 'package:undanaturalinventory/InventoryPage.dart';

import 'NewProduct.dart';
import 'ProductsPage.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenu createState() => _MainMenu();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainMenu extends State<MainMenu> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Inventory(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    //Products(),
    NewProduct(),
    Text(
      'Index 4: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helpers.getAppBar(context),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          opacity: 1,
          color: Helpers.getPink(),
        ),
        unselectedIconTheme: IconThemeData(opacity: 0.6, color: Colors.grey),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/taskIcon.png"),
            ),
            label: 'Holis',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/listIcon.png"),
            ),
            label: 'Holis',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Helpers.getPink(),
              ),
              alignment: Alignment.center,
              height: Helpers.getHeight(context, percentage: 6),
              width: Helpers.getWidth(context, percentage: 20),
              child: Text(
                "+",
                textScaleFactor: 2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            label: 'Holis',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/boxIcon.png"),
            ),
            label: 'Holis',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/userIcon.png"),
            ),
            label: 'Holis',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
