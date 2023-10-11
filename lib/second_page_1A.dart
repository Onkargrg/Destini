import 'package:destini/reusable_card.dart';
import 'package:destini/third_page_2A.dart';
import 'package:flutter/material.dart';
import 'package:destini/custom_elevated_button.dart';
import 'package:destini/constants.dart';

class SecondPage1A extends StatefulWidget {
  const SecondPage1A({super.key});

  @override
  State<SecondPage1A> createState() => _SecondPage1AState();
}

class _SecondPage1AState extends State<SecondPage1A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              kSecondPage1AText,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 120.0,
            ),
            CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdPage2A()));
                },
                buttonText: kOption2A,
                backgroundColor: Colors.red,
                textColor: Colors.white),
            const SizedBox(
              height: 40.0,
            ),
            CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdPage2A()));
                },
                buttonText: kOption2B,
                backgroundColor: Colors.blue,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
