import 'package:bbot/screens/admin/bin_management_screen.dart';
import 'package:bbot/screens/admin/dashboard_screen.dart';
import 'package:bbot/screens/admin/report_screen.dart';
import 'package:bbot/screens/admin/user_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/constants.dart';

class AdminBottomNavigation extends StatefulWidget {
  const AdminBottomNavigation({Key? key}) : super(key: key);

  @override
  State<AdminBottomNavigation> createState() => _AdminBottomNavigationState();
}

class _AdminBottomNavigationState extends State<AdminBottomNavigation> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    AdminDashboardScreen(),
    AdminBinManagement(),
    AdminUserManagement(),
    AdminReportManagement(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.dashboard_rounded,
              color: primaryButtonColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete_sweep_outlined,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.delete_sweep_rounded,
              color: primaryButtonColor,
            ),
            label: "Badge",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_outlined,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.group_rounded,
              color: primaryButtonColor,
            ),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.report_outlined,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.report_rounded,
              color: primaryButtonColor,
            ),
            label: "Map",
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
