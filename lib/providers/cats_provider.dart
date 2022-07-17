import 'package:flutter/material.dart';

class CatsProvider with ChangeNotifier {
  final List<Map<String, dynamic>> catIcons = [
    {'icon': const Icon(Icons.local_hospital), 'title': 'Medical'},
    {'icon': const Icon(Icons.computer), 'title': 'Computer'},
    {'icon': const Icon(Icons.apple), 'title': 'Apple'},
    {'icon': const Icon(Icons.water), 'title': 'Seafood'},
    {'icon': const Icon(Icons.build), 'title': 'Constuction'},
    {'icon': const Icon(Icons.window), 'title': 'Windows'},
    {'icon': const Icon(Icons.money), 'title': 'Bond'},
    {'icon': const Icon(Icons.backpack), 'title': 'Vegetables'},
    {'icon': const Icon(Icons.account_tree), 'title': 'Fruits'},
    {'icon': const Icon(Icons.bolt), 'title': 'Boat'},
    {'icon': const Icon(Icons.water), 'title': 'Seafood'},
    {'icon': const Icon(Icons.window), 'title': 'Windows'},
    {'icon': const Icon(Icons.water), 'title': 'Seafood'},
    {'icon': const Icon(Icons.build), 'title': 'Constuction'},
    {'icon': const Icon(Icons.window), 'title': 'Windows'},
  ];

  List<Map<String, dynamic>> get getCatIcons {
    return catIcons;
  }
}
