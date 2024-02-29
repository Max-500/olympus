import 'package:flutter/material.dart';
import 'package:olympus/presentation/widgets.dart';

class MyReadBooks extends StatefulWidget {
  const MyReadBooks({super.key});

  @override
  State<MyReadBooks> createState() => _MyReadBooksState();
}

class _MyReadBooksState extends State<MyReadBooks> {
  bool aux  = false;
  double height = 0.45;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    

    void update(){
      if(aux){
        height = 0.025;
      }else{
        height = 0.45;
      }
      aux = !aux;
      setState(() {
        
      });
    }

    return Container(
        margin: EdgeInsets.only(top: screenHeight * height), //0.025
        color: const Color.fromRGBO(132, 91, 50, 1),
        width: MediaQuery.of(context).size.width,
        child: Container(
            padding: EdgeInsets.only(
                right: screenWidth * 0.05, left: screenWidth * 0.05, top: screenHeight * 0.01),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.025,
                    child: ElevatedButton(
                      onPressed: update,
                      child: const SizedBox
                          .shrink(),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: screenWidth * 0.45, top: screenWidth * 0.025),
                      child: const Text('Libros leídos',
                          style: TextStyle(
                              fontFamily: 'Ibarra Real Nova',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const MyReadBooksRow()
                ],
              ),
            )));
  }
}