import 'package:destini/constants.dart';
import 'package:destini/reusable_card.dart';
import 'package:destini/third_page_2C.dart';
import 'package:destini/third_page_2D.dart';
import 'package:flutter/material.dart';
import 'package:destini/custom_elevated_button.dart';

class SecondPage1B extends StatefulWidget {
  const SecondPage1B({Key? key}) : super(key: key);

  @override
  State<SecondPage1B> createState() => _SecondPage1BState();
}

class _SecondPage1BState extends State<SecondPage1B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              kSecondPage1BText,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100.0,
            ),
            CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdPage2C()));
                },
                buttonText: kOption2C,
                backgroundColor: Colors.red,
                textColor: Colors.white),
            const SizedBox(
              height: 30.0,
            ),
            CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdPage2D()));
                },
                buttonText: kOption2D,
                backgroundColor: Colors.blue,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
