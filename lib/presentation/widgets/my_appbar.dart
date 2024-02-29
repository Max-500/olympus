import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return AppBar(
      toolbarHeight: screenHeight * 0.15,
      backgroundColor: const Color.fromRGBO(106, 73, 40, 1),
      title: const Text('Olympus', style: TextStyle(fontFamily: 'Hurricane', fontSize: 50, color: Colors.white),),
      actions: <Widget> [
        GestureDetector(
          onTap: () => context.push('/perfil'),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset('assets/images/img-perfil.png')
          ),
        ),
      ]
    );
  }
}