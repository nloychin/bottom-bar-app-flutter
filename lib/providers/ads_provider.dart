import 'package:flutter/material.dart';

class AdsProvider with ChangeNotifier {
  static final List<String> adsImages = [
    'assets/images/ads/ad1.jpg',
    'assets/images/ads/ad2.jpg',
    'assets/images/ads/ad3.jpg',
    'assets/images/ads/ad4.jpg'
  ];

  List<String> get getAdsImages {
    return adsImages;
  }
}
