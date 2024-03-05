import 'package:flutter/material.dart';
import 'package:partyguam/utils/theme/color.dart';

final ButtonStyle longHorizontal = ElevatedButton.styleFrom(
  backgroundColor: AppColors.primaryLightColors,
  minimumSize: const Size(335, 48),
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

final ButtonStyle mainShortHorizontal = ElevatedButton.styleFrom(
  backgroundColor: AppColors.primaryLightColors,
  minimumSize: const Size(164, 48),
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

final ButtonStyle subShortHorizontal = ElevatedButton.styleFrom(
  side: const BorderSide(color: AppColors.primaryLightColors),
  minimumSize: const Size(164, 48),
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

class SocialLoginButton extends StatefulWidget {
  final String text;
  final Icon icon;
  final Color backgroundColor;
  final String route;

  const SocialLoginButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.backgroundColor,
      required this.route});

  @override
  State<SocialLoginButton> createState() => _SocialLoginButtonState();
}

class _SocialLoginButtonState extends State<SocialLoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, widget.route);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(335, 52),
        elevation: 1,
        backgroundColor: widget.backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        textStyle: TextStyle(
          color: AppColors.greyColors.shade700,
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
        alignment: Alignment.centerLeft,
        // padding: EdgeInsets.only(left: 20.0),
      ),
      icon: widget.icon,
      label: Text(widget.text),
    );
  }
}
