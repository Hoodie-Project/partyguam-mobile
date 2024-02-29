import 'package:flutter/material.dart';
import 'package:partyguam/utils/theme/color.dart';

class LongHorizontalButton extends StatelessWidget {
  final String content;

  const LongHorizontalButton({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.primaryColors),
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              // color: AppColors.greyColors.shade700,
            ),
          ),
  
      child: Text(content),
    );
  }
}
