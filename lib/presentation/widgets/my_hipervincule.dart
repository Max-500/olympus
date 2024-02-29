import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyHipervincule extends StatelessWidget {
  final VoidCallback onPressed;

  const MyHipervincule({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
      style: const TextStyle(color: Colors.white, fontSize: 19, fontFamily: 'Ibarra Real Nova'), 
      children: [
        const TextSpan(text: 'Do you have an account? ', style: TextStyle(color: Colors.black)),
        TextSpan(text: 'Log in',style: const TextStyle(fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()..onTap = onPressed,
        ),
      ],
      ),
    );
  }
}