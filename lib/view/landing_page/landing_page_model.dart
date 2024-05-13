import 'package:flutter/material.dart';
import 'package:inspectstore_landing_web/core/constant/assets.dart';

class LandingPageModel extends ChangeNotifier {
  ///
  /// ----------> Header Section </----------
  ///
  List<String> menuList = [
    'Home',
    'Our App',
    'How it works',
    'Contact Us',
  ];

  ///
  /// ----------> Header Section </----------
  ///
  List<String> howItWork = [
    purchase,
    glass,
    upload,
  ];
  List<String> howItWorkLabel = [
    "Browse.",
    "Purchase.",
    "upload..",
  ];
  List<String> howItWorkDesciption = [
    "Discover and select from a wide range of detailed house survey reports available on INSPECTSTORE.",
    "Secure your chosen report with a simple transaction process, acquiring valuable insights into your prospective property.",
    "Seamlessly share your own house survey reports on INSPECTSTORE, facilitating transparency and trust for potential buyers.",
  ];

  ///
  /// ----------> Header Section </----------
  ///
  List<String> person = [
    person1,
    person2,
    person3,
    person4,
    person5,
  ];
}
