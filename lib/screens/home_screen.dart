import 'package:flutter/material.dart';
import 'tools_screen.dart';
import 'profile_screen.dart';
import 'weather_screen.dart';
import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ToolsScreen(),
    const ProfileScreen(),
    const WeatherScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/homepage.jpg'), // Updated to .jpg
                fit: BoxFit.cover,
              ),
            ),
          ),
          // App content
          Column(
            children: [
              Expanded(
                child: _screens[_currentIndex],
              ),
              BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.build),
                    label: "Tools",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.cloud),
                    label: "Weather",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    label: "Cart",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
