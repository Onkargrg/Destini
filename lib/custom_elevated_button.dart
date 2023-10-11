import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color backgroundColor;
  final Color textColor;

  const CustomElevatedButton({super.key,
    required this.onPressed,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      height: 100.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Background color
          foregroundColor: textColor, // Text color
          elevation: 5, // Shadow elevation
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(25),
        ),
        onPressed: onPressed,
        child: Text(buttonText,style: const TextStyle(fontSize: 20.0),),),
    );
  }
}
