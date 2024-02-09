import 'package:ecom_mart/features/presentation/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
       ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: GNav(
          activeColor: Colors.black,
          color: Colors.grey.shade700,
          tabBackgroundColor: Colors.grey.shade300,
          padding: const EdgeInsets.fromLTRB(16,10,16,10),
          gap: 8,
          tabs: const [
            GButton(icon: Icons.home,
            text: "Home",),
            GButton(icon: Icons.favorite_outline_outlined,
            text: "Wishlist",),
            GButton(icon: Icons.dashboard_customize_rounded,
            text: "Deal",),
            GButton(icon: Icons.shopping_cart_rounded,
            text: "Cart",),
          ],
          selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
        ),
      ),
    );
  }
}