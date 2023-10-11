import 'package:destini/constants.dart';
import 'package:destini/reusable_card.dart';
import 'package:flutter/material.dart';
import 'second_page_1A.dart';
import 'second_page_1B.dart';
import 'package:destini/custom_elevated_button.dart';

void main() => runApp(const MaterialApp(home: FirstScreen()));

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              kFirstPageText,
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
                          builder: (context) => const SecondPage1A()));
                },
                buttonText: kOption1A,
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
                          builder: (context) => const SecondPage1B()));
                },
                buttonText: kOption1B,
                backgroundColor: Colors.blue,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
