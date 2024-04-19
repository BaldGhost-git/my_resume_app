import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:my_resume_app/common_widgets/primary_button.dart';
import 'package:my_resume_app/experiences/experiences.dart';
import 'package:my_resume_app/expertise/expertise.dart';
import 'package:my_resume_app/home/home_footer.dart';
import 'package:my_resume_app/home/home_providers.dart';
import 'package:my_resume_app/themes/typography.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });
  final String text =
      "I focused on digital transformation with personalized mobile app solutions that maximize efficiency.";

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [themeColor.primary, themeColor.tertiary],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const Gap(20),
                RichText(
                  text: TextSpan(
                    text: 'Hi There! I\'m ',
                    style: TypoThemes.headline.copyWith(color: themeColor.onSurface),
                    children: [
                      TextSpan(
                        text: 'Rizky Aditya',
                        style: TextStyle(color: themeColor.primary),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Text(
                  text,
                  style: TypoThemes.body,
                ),
                const Gap(20),
                Center(
                  child: Consumer(
                    builder:
                        (BuildContext context, WidgetRef ref, Widget? child) {
                      return Wrap(
                        spacing: 10,
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        children: [
                          PrimaryButton(
                              onPressed: () => ref
                                  .read(sectionToggle.notifier)
                                  .showExpertise(),
                              text: 'Expertise', ),
                          PrimaryButton(
                              onPressed: () => ref
                                  .read(sectionToggle.notifier)
                                  .showExperiences(),
                              text: 'Experience'),
                          PrimaryButton(
                              onPressed: () => ref
                                  .read(sectionToggle.notifier)
                                  .showAchievements(),
                              text: 'Achievements'),
                        ],
                      );
                    },
                  ),
                ),
                const Gap(20),
                Consumer(builder: (context, ref, child) {
                  final section = ref.watch(sectionToggle);
                  switch (section) {
                    case null:
                      return const SizedBox();
                    case Section.achievements:
                      return const Placeholder(
                        color: Colors.red,
                      );
                    case Section.experiences:
                      return const Experiences();
                    case Section.expertise:
                      return const Expertise();
                  }
                }),
                const Gap(30),
                Divider(
                  color: themeColor.secondary,
                ),
                const HomeFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
