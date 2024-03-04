import 'package:flutter/material.dart';

class ClearCircleIcon extends StatelessWidget {
  const ClearCircleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/clear_circle.png',
      width: 24,
      height: 24,
    );
  }
}

class CustomIcons {
  CustomIcons._();

  static const _customIconsFamily = 'CustomIcons';

  static const String? _customIconsPackage = null;

  static const IconData clearCircle = IconData(
    0xe800,
    fontFamily: _customIconsFamily,
  );

  static const IconData flag = IconData(
    0xe801,
    fontFamily: _customIconsFamily,
  );

  static const IconData kk = IconData(
    0xe802,
    fontFamily: _customIconsFamily,
  );
}
