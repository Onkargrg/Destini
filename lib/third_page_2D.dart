import 'package:destini/constants.dart';
import 'package:destini/reusable_card.dart';
import 'package:destini/third_page_2A.dart';
import 'package:destini/third_page_2B.dart';
import 'package:flutter/material.dart';
import 'package:destini/custom_elevated_button.dart';

class ThirdPage2D extends StatefulWidget {
  const ThirdPage2D({Key? key}) : super(key: key);

  @override
  State<ThirdPage2D> createState() => _ThirdPage2DState();
}

class _ThirdPage2DState extends State<ThirdPage2D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              kThirdPage2D,
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
              height: 30.0,
            ),
            CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdPage2B()));
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
