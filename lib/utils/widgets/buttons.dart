import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:partyguam/utils/theme/color.dart';

final ButtonStyle longHorizontal = ElevatedButton.styleFrom(
  backgroundColor: AppColors.primaryColors,
  minimumSize: const Size(335, 48),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12)
    )
  ),
  textStyle: TextStyle(
    color: AppColors.greyColors.shade700,
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
  )
);

final ButtonStyle mainShortHorizontal = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryColors,
    minimumSize: const Size(164, 48),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(12)
        )
    ),
    textStyle: TextStyle(
      color: AppColors.greyColors.shade700,
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
    )
);

final ButtonStyle subShortHorizontal = ElevatedButton.styleFrom(
    side: const BorderSide(color: AppColors.primaryColors),
    minimumSize: const Size(164, 48),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(12)
        )
    ),
    textStyle: TextStyle(
      color: AppColors.greyColors.shade700,
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
    )
);