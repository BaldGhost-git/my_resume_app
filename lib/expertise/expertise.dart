import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:morphable_shape/morphable_shape.dart';
import 'package:my_resume_app/common_widgets/polygon_icons.dart';
import 'package:my_resume_app/gen/assets.gen.dart';
import 'package:my_resume_app/themes/typography.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Expertise extends StatelessWidget {
  const Expertise({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'Some ',
            style: TypoThemes.headline.copyWith(color: themeColor.onSurface),
            children: [
              TextSpan(
                text: 'tools ',
                style: TextStyle(color: themeColor.primary),
              ),
              const TextSpan(text: 'that I used'),
            ],
          ),
        ),
        const Gap(20),
        Text(
          'With more experience, more tools will shown here',
          style: TypoThemes.body,
        ),
        const Gap(20),
        Center(
          child: Wrap(
            spacing: 15,
            alignment: WrapAlignment.center,
            children: [
              PolygonIcons(
                sides: 6,
                width: 10.h,
                height: 10.h,
                cornerStyle: CornerStyle.rounded,
                cornerRadius: 12.toPercentLength,
                color: themeColor.tertiaryContainer,
                child: Assets.svg.icons8Figma.svg(
                  fit: BoxFit.scaleDown,
                  colorFilter:
                      ColorFilter.mode(themeColor.onTertiaryContainer, BlendMode.srcIn),
                ),
              ),
              PolygonIcons(
                sides: 6,
                width: 10.h,
                height: 10.h,
                cornerStyle: CornerStyle.rounded,
                cornerRadius: 12.toPercentLength,
                color: themeColor.tertiaryContainer,
                child: Assets.svg.icons8Dart.svg(
                  fit: BoxFit.scaleDown,
                  colorFilter:
                      ColorFilter.mode(themeColor.onTertiaryContainer, BlendMode.srcIn),
                ),
              ),
              PolygonIcons(
                sides: 6,
                width: 10.h,
                height: 10.h,
                cornerStyle: CornerStyle.rounded,
                cornerRadius: 12.toPercentLength,
                color: themeColor.tertiaryContainer,
                child: Assets.svg.icons8Flutter.svg(
                  fit: BoxFit.scaleDown,
                  colorFilter:
                      ColorFilter.mode(themeColor.onTertiaryContainer, BlendMode.srcIn),
                ),
              ),
              PolygonIcons(
                sides: 6,
                width: 10.h,
                height: 10.h,
                cornerStyle: CornerStyle.rounded,
                cornerRadius: 12.toPercentLength,
                color: themeColor.tertiaryContainer,
                child: Assets.svg.icons8Java.svg(
                  fit: BoxFit.scaleDown,
                  colorFilter:
                      ColorFilter.mode(themeColor.onTertiaryContainer, BlendMode.srcIn),
                ),
              ),
              PolygonIcons(
                sides: 6,
                width: 10.h,
                height: 10.h,
                cornerStyle: CornerStyle.rounded,
                cornerRadius: 12.toPercentLength,
                color: themeColor.tertiaryContainer,
                child: Assets.svg.icons8Nodejs.svg(
                  fit: BoxFit.scaleDown,
                  colorFilter:
                      ColorFilter.mode(themeColor.onTertiaryContainer, BlendMode.srcIn),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}