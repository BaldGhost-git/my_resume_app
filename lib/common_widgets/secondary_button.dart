import 'package:flutter/material.dart';
import 'package:my_resume_app/themes/typography.dart';

class SecondaryButton extends StatelessWidget {

  final String text;
  final void Function() onPressed;
  
  const SecondaryButton({
    super.key, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TypoThemes.body,
      ),
    );
  }
}
