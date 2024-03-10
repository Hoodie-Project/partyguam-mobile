import 'package:flutter/material.dart';
import 'package:partyguam/app/theme/colors.dart';

final ThemeData lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.greyColors.shade50,
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
  scaffoldBackgroundColor: AppColors.greyColors.shade50,
  useMaterial3: true,
);
