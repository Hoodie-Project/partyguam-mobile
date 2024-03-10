import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class ClearCircleIcon extends StatelessWidget {
//   const ClearCircleIcon({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 10,
//       child: Image.asset(
//         'assets/icons/clear_circle.png',
//       ),
//     );
//   }
// }

class CustomIcons {
  CustomIcons._();

  // static const _kFontFam = 'CustomIcons';
  // static const String? _kFontPkg = null;

  static const _customIconsFamily = 'CustomIcons';
  static const String? _customIconsPackage = null;

  static const IconData cancel_circled2 = IconData(0xe800,
      fontFamily: _customIconsFamily, fontPackage: _customIconsPackage);
  static const IconData cancel_circled_outline = IconData(0xe800,
      fontFamily: _customIconsFamily, fontPackage: _customIconsPackage);
  static const IconData cross_circle = IconData(0xe880,
      fontFamily: _customIconsFamily, fontPackage: _customIconsPackage);
}
