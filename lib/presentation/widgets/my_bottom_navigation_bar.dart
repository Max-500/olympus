import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
        height: screenHeight * 0.1,
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromRGBO(106, 73, 40, 1),
          unselectedLabelStyle: const TextStyle(color: Color.fromRGBO(106, 73, 40, 1)),
          selectedLabelStyle: const TextStyle(color: Colors.black),
          currentIndex: 0,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_add), label: 'Library'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Cart'),
          ],
        ),
      );
  }
}