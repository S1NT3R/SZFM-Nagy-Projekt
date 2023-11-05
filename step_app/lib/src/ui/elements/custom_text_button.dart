import 'package:flutter/material.dart';
import 'package:step_app/src/resources/theme/application_style.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;

  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color = ApplicationStyle.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 50,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
