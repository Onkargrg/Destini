import 'package:destini/constants.dart';
import 'package:destini/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:destini/custom_elevated_button.dart';
import 'package:destini/main.dart';

class ThirdPage2B extends StatefulWidget {
  const ThirdPage2B({Key? key}) : super(key: key);

  @override
  State<ThirdPage2B> createState() => _ThirdPage2BState();
}

class _ThirdPage2BState extends State<ThirdPage2B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              kThirdPage2B,
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
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstScreen()),
                      (Route<dynamic> route) => false);
                },
                buttonText: 'Restart',
                backgroundColor: Colors.red,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
