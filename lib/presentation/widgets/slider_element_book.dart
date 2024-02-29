import 'package:flutter/material.dart';

class SliderElementBook extends StatelessWidget {
  final String name;
  final String autor;
  final String url;

  const SliderElementBook({super.key, required this.name, required this.autor, required this.url,});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
        width: screenWidth * 0.4,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox(
                width: screenWidth * 0.4,
                height: screenHeight * 0.3,
                child: Image.asset(url, fit: BoxFit.fill,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.035),
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ibarra Real Nova',
                    color: Color.fromRGBO(104, 72, 41, 1)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.035),
              child: Text(
                autor,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ibarra Real Nova',
                    color: Color.fromRGBO(156, 157, 167, 1)),
              ),
            ),
          ],
        ));
  }
}
