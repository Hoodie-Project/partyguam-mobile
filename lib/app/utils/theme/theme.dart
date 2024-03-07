import 'package:flutter/material.dart';
import 'package:partyguam/app/utils/theme/color.dart';

final ThemeData lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: AppColors.greyColors.shade700,
      fontSize: 16,
      fontFamily: 'SUIT',
      fontWeight: FontWeight.w700,
    ),
    centerTitle: true,
  ),
  brightness: Brightness.light,
  fontFamily: 'SUIT',
  useMaterial3: true,
);
