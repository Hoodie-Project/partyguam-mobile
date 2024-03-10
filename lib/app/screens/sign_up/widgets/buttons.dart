import 'package:flutter/material.dart';
import 'package:partyguam/app/theme/colors.dart';

/// buttonStyles
final ButtonStyle filledLongStyle = ElevatedButton.styleFrom(
  backgroundColor: AppColors.primaryLightColors,
  fixedSize: const Size(335, 48),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16),
    ),
  ),
  textStyle: TextStyle(
    color: AppColors.greyColors.shade700,
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
  ),
);

final ButtonStyle filledShortStyle = ElevatedButton.styleFrom(
  backgroundColor: AppColors.primaryLightColors,
  fixedSize: const Size(164, 48),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
  textStyle: TextStyle(
    color: AppColors.greyColors.shade700,
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
  ),
);

final ButtonStyle outlinedShortStyle = ElevatedButton.styleFrom(
  side: const BorderSide(color: AppColors.primaryLightColors),
  fixedSize: const Size(164, 48),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
  textStyle: TextStyle(
    color: AppColors.greyColors.shade700,
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
  ),
);

/// buttons
class MainHorizontalButton extends StatelessWidget {
  final String routeName;
  final String content;

  const MainHorizontalButton(
      {super.key, required this.content, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        style: filledLongStyle,
        child: Text(content),
      ),
    );
  }
}

class SquareButton extends StatefulWidget {
  final String content;

  const SquareButton({super.key, required this.content});

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 163,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColors.shade200,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Center(
        child: Text(
          widget.content,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
