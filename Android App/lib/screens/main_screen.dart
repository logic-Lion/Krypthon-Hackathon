import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import '../widgets/bottombar.dart';

import './screen1.dart';
import './screen2.dart';
import './screen3.dart';
import './screen4.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const routeName = '/main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedPageIndex=0;
  late List<Widget> _pages;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex=index;
    });
  }

  @override
  void initState() {
    _pages=[
    HomeScreen(),
    TransHistory(),
    const FarmProductsPage(),
    ProfilePage(),
  ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('My App'),
        // ),
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: CurvedNavigationBar(
            height: 50,
            backgroundColor: Colors.white,
            color: Colors.green,
            buttonBackgroundColor: Colors.grey.shade300,
            onTap: _selectPage,
            items: const <Widget>[
              Icon(Icons.home),
              Icon(Icons.sell_sharp),
              Icon(Icons.currency_rupee),
              Icon(Icons.person)
            ])
      ),
    );
  }
}