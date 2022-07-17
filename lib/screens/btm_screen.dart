import 'package:badges/badges.dart';
import 'package:buy_them_all/screens/feed_screen.dart';
import 'package:buy_them_all/screens/user_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../providers/dark_theme_provider.dart';
import 'cart_screen.dart';
import 'home_screen.dart';
import 'notification_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeScreen(), 'title': 'Home Screen'},
    {'page': const FeedScreen(), 'title': 'Feed Screen'},
    {'page': const CartScreen(), 'title': 'Cart Screen'},
    {'page': const NotificationScreen(), 'title': 'Notification Screen'},
    {'page': const UserScreen(), 'title': 'User Screen'},
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    bool _isDark = themeState.getDarkTheme;
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        height: 55,
        color: const Color.fromARGB(255, 15, 175, 172),
        buttonBackgroundColor: const Color.fromARGB(255, 15, 175, 172),
        items: <Widget>[
          const Icon(IconlyLight.home, size: 20),
          const Icon(FontAwesomeIcons.rss, size: 20),
          Badge(
            toAnimate: false,
            showBadge: true,
            shape: BadgeShape.square,
            badgeColor: const Color.fromARGB(255, 103, 223, 195),
            borderRadius: BorderRadius.circular(8),
            position: BadgePosition.topEnd(top: -7, end: -7),
            badgeContent: const Text('0'),
            child: const Icon(IconlyLight.buy, size: 25),
          ),
          const Icon(FontAwesomeIcons.bell, size: 20),
          const Icon(FontAwesomeIcons.user, size: 20),
        ],
        onTap: _selectedPage,
      ),
    );
  }
}
