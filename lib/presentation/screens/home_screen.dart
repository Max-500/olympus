import 'package:flutter/material.dart';
import 'package:olympus/presentation/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight * 0.1),
            child: const MyAppBar()),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: screenHeight * 0.1,
                    child: const ViewAllBooks()
                ),
                SizedBox(
                  height: screenHeight * 0.3,
                  child: const BookSlider()
                ),
                Container(
                  color: Colors.green,
                  height: screenHeight * 0.3,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const MyBottomNavigationBar());
  }
}