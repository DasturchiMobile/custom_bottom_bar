import 'package:flutter/material.dart';

class BottomBarItem {
  final String imagePath;
  final String title;
  final TextStyle? textStyle;

  BottomBarItem({
    required this.imagePath,
    required this.title,
    this.textStyle,
  });
}
