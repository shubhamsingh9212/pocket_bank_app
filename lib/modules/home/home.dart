import 'package:flutter/material.dart';
import '../../utils/Images.dart';
import '../../utils/app_colors.dart';
import '../balance/balancePage.dart';
import '../income_expenses/expenses.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final screens = [const Balance() , const Expenses(),const Balance() , const Expenses(),const Balance()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        elevation: 20.0,
        selectedIconTheme: const IconThemeData(color: AppColors.bluePrimary),
        unselectedIconTheme: const IconThemeData(color: AppColors.black),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(Images.stocks),
            label: "",
            // title: Text('Home'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange),
            label: "",
            // title: Text('Search'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: "",
            // title: Text('Profile'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
            // title: Text('Profile'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
            // title: Text('Profile'),
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
      ),
      body: screens[selectedIndex],
    );
  }
}
