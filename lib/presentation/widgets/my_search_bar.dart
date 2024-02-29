import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          left: screenWidth * 0.05,
          right: screenWidth * 0.1,
          top: screenHeight * 0.05,
          bottom: screenHeight * 0.05),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(217, 217, 217, 1),
            borderRadius: BorderRadius.circular(25.0),
            // boxShadow property removed
          ),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_outlined),
                hintText: 'Buscar',
                fillColor: const Color.fromRGBO(217, 217, 217, 1),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                )),
          ),
        ),
      ),
    );
  }
}
