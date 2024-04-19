import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_resume_app/themes/typography.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Experiences extends StatelessWidget {
  const Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          width: 100.w,
          constraints: BoxConstraints(minHeight: 25.h),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: themeColor.tertiaryContainer.withOpacity(0.2)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Junior System Analyst',
                style: TypoThemes.body
                    .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              Text('PT. NSSOL Systems Indonesia',style: TypoThemes.body,),
              Text('2022 - Present',style: TypoThemes.body,),
              Gap(10),
              Text('Lorem ipsum is just a text template to see how it would looks', style: TypoThemes.body,)
            ],
          ),
        )
      ],
    );
  }
}
