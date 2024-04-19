import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:my_resume_app/main.dart';
import 'package:my_resume_app/themes/typography.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(10),
      height: 20.h,
      width: 100.w,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      'Connect with me!',
                      style: TypoThemes.body,
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton.filledTonal(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.whatsapp),
                        ),
                        const Gap(5),
                        IconButton.filledTonal(
                          onPressed: () {},
                          icon: const Icon(Icons.email_outlined),
                        ),
                        const Gap(5),
                        IconButton.filledTonal(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                        ),
                        const Gap(5),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      'Too dark for you?',
                      style: TypoThemes.body,
                    ),
                    const Gap(10),
                    Consumer(
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        return IconButton.filled(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  themeColor.tertiaryContainer),
                              foregroundColor: MaterialStatePropertyAll(
                                  themeColor.onTertiaryContainer)),
                          onPressed: () => ref.read(appTheme.notifier).toggle(),
                          icon: const FaIcon(FontAwesomeIcons.sun),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          const Gap(15),
          Center(
            child: Text(
              'Icons are powered by icons8',
              style: TypoThemes.body.copyWith(fontSize: 13.sp),
            ),
          )
        ],
      ),
    );
  }
}
