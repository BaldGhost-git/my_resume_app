import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_resume_app/home/home.dart';
import 'package:my_resume_app/themes/dark.dart';
import 'package:my_resume_app/themes/light.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ColorScheme themeColor = ref.watch(appTheme);
        return ResponsiveSizer(
          builder: (context, orientation, screenType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: themeColor,
              ),
              home: const Home(),
            );
          },
        );
      },
    );
  }
}

class ThemeNotifier extends Notifier<ColorScheme> {
  late bool isDarkMode;
  @override
  ColorScheme build() {
    isDarkMode = true;
    return colorSchemeDark;
  }

  void toggle() {
    isDarkMode = !isDarkMode;
    state = isDarkMode ? colorSchemeDark : colorSchemeLight;
  }
}

final appTheme =
    NotifierProvider<ThemeNotifier, ColorScheme>(ThemeNotifier.new);
