import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF09716c);
const List<Color> _colotTheme = [
  _customColor,
  Colors.white,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.pink,
];

class AppTheme {
  final int selecterColor;

  AppTheme({this.selecterColor = 0})
      : assert(selecterColor >= 0 && selecterColor <= _colotTheme.length - 1, 'Invalid color');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true, 
      colorSchemeSeed: _colotTheme[selecterColor],
      brightness: Brightness.light,
      );
  }
}
