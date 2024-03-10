import 'package:flutter/material.dart';
import 'package:partyguam/app/theme/colors.dart';

/// buttonStyles
final ButtonStyle filledLongStyle = ElevatedButton.styleFrom(
  backgroundColor: AppColors.primaryLightColors,
  elevation: 1,
  foregroundColor: AppColors.greyColors.shade700,
  minimumSize: const Size(
    335.0,
    52.0,
  ),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(16.0),
    ),
  ),
  textStyle: const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
  ),
);

final ButtonStyle filledShortStyle = ElevatedButton.styleFrom(
  backgroundColor: AppColors.primaryLightColors,
  elevation: 1,
  foregroundColor: AppColors.greyColors.shade700,
  minimumSize: const Size(
    164.0,
    48.0,
  ),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12.0),
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
  backgroundColor: AppColors.greyColors.shade50,
  foregroundColor: AppColors.greyColors.shade700,
  minimumSize: const Size(
    164.0,
    48.0,
  ),
  elevation: 1,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12.0),
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
  final String route;
  final String content;

  const MainHorizontalButton(
      {super.key, required this.content, required this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          style: filledLongStyle,
          child: Text(content),
        ),
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
      height: 163.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColors.shade200,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
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
