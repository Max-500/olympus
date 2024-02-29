import 'package:flutter/material.dart';

class MyReadBooksRow extends StatelessWidget {
  const MyReadBooksRow({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: List.generate(
        5, // Cambia este valor para generar más o menos elementos
        (index) => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth * 0.45,
              height: screenHeight * 0.35,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Image.asset('assets/images/books/book3.png'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.45,
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      'Just My Type',
                      style: TextStyle(
                          fontFamily: 'Ibarra Real Nova',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text('Simon Garfield',
                        style: TextStyle(
                            fontFamily: 'Ibarra Real Nova',
                            fontSize: 15,
                            color: Color.fromRGBO(151, 141, 139, 1),
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                        width: screenWidth * 0.35,
                        child: Container(
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromRGBO(244, 245, 247, 1),
                          ),
                        )),
                    SizedBox(
                      height: screenHeight * 0.015,
                    ),
                    const Text('Coming Soon',
                        style: TextStyle(
                            fontFamily: 'Ibarra Real Nova',
                            fontSize: 15,
                            color: Color.fromRGBO(246, 193, 45, 1),
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                        width: screenWidth * 0.3,
                        child: Container(
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromRGBO(246, 193, 45, 1),
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
