import 'package:flutter/material.dart';
import 'package:my_resume_app/themes/typography.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        minimumSize: MaterialStatePropertyAll(
          Size(0.8.dp, 0.40.dp),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TypoThemes.body,
      ),
    );
  }
}
