import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final double horizontalPadding;
  final double verticalPadding;
  final double sizeText;
  final String? iconPath;

  const MyElevatedButton(
      {super.key,
      required this.title,
      required this.color,
      required this.textColor,
      required this.onPressed,
      required this.horizontalPadding,
      required this.verticalPadding,
      required this.sizeText,
      this.iconPath});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconPath != null) ...[
              SvgPicture.asset(iconPath!, height: 20, width: 20),
              const SizedBox(width: 10),
            ],
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: sizeText,
                    color: textColor,
                    fontFamily: 'Ibarra Real Nova',
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
    );
  }
}