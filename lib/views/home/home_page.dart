import 'package:alahmad_book/views/infinite/infinity_screen.dart';
import 'package:alahmad_book/views/profile/profile_screen.dart';
import 'package:alahmad_book/views/search/search_screen.dart';
import 'package:alahmad_book/views/store/store_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    StoreScreen(),
    InfinityScreen(),
    SearchScreen(),
    Center(child: Text('جستجو')),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'فروشگاه'),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: 'بی نهایت'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'جستجو'),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: 'کتاب های من'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'حساب های کاربری')
        ],
      ),
    );
  }
}