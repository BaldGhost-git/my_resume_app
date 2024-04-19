import 'package:flutter/material.dart';
import 'package:my_resume_app/gen/fonts.gen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TypoThemes {
  TypoThemes._();

  static TextStyle headline = TextStyle(
    fontFamily: FontFamily.quicksand,
    fontSize: 28.sp,
    fontVariations: const <FontVariation>[
      FontVariation.weight(600),
    ],
  );

  static TextStyle body = const TextStyle(
    fontFamily: FontFamily.dMSans,
  );
}
