import 'package:flutter/material.dart';

class ThemeManager {
  final bool isDarkMode;

  ThemeManager({required this.isDarkMode});

  ThemeData get themeData => isDarkMode ? ThemeData.dark() : ThemeData.light();
}