import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olympus/presentation/widgets/my_elevated_button.dart';
import 'package:animate_do/animate_do.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 1500),
                child: const Text('Olympus', style: TextStyle(fontFamily: 'Hurricane', fontSize: 70, color: Color.fromRGBO(152, 105, 57, 1)),),
              ),
              SizedBox(height: screenHeight*0.05,),
              FadeInDown(
                duration: const Duration(milliseconds: 1500),
                child: FractionallySizedBox(widthFactor: 0.4, child: Image.asset('assets/images/Imagen-Principal.jpeg'),),
              ),
              SizedBox(height: screenHeight*0.15,),
              FadeInDown(
                duration: const Duration(milliseconds: 1500),
                child: const Text('Cada fracaso enseña al individuo algo', style: TextStyle(fontFamily: 'Ibarra Real Nova', fontSize: 20, color: Color.fromRGBO(212, 177, 141, 1)),),
              ),
              SizedBox(height: screenHeight*0.025,),
              FadeInDown(
                duration: const Duration(milliseconds: 1500),
                child: SizedBox(
                  width: screenWidth * 0.7,
                  child: MyElevatedButton(title: 'Get Started', color: const Color.fromRGBO(106, 73, 40, 1), textColor: Colors.white, onPressed: () => context.go('/login', ), horizontalPadding: 40, verticalPadding: 20, sizeText: 25,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}