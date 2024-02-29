import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olympus/presentation/widgets/entry_field.dart';
import 'package:olympus/presentation/widgets/my_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(132, 91, 50, 1),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Login Now', style: TextStyle(fontFamily: 'Ibarra Real Nova', fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height: screenHeight * 0.05,),
                SizedBox(width: screenWidth * 0.7, child: const EntryField(title: 'Email',icon1: null,icon2: null)),
                SizedBox(height: screenHeight * 0.03,),
                SizedBox(width: screenWidth * 0.7, child: const EntryField(title: 'Password',icon1: Icons.visibility_off_rounded, icon2: Icons.remove_red_eye_rounded)),
                SizedBox(height: screenHeight * 0.05,),
                SizedBox(
                  width: screenWidth * 0.7,
                  child: MyElevatedButton(title: 'Login', color: Colors.white, textColor: Colors.black, onPressed: () => context.go('/home'),horizontalPadding: 40, verticalPadding: 20, sizeText: 25,)),
                SizedBox(height: screenHeight * 0.025,),
                const Text('or Login with', style: TextStyle(fontFamily: 'Ibarra Real Nova', fontSize: 15, color: Colors.white),),
                SizedBox(height: screenHeight*0.025,),
                SizedBox(
                  width: screenWidth * 0.7,
                  height: 40,
                  child: MyElevatedButton(title: 'Login with Facebook', color: const Color.fromRGBO(253, 244, 214, 1), textColor: const Color.fromRGBO(125, 119, 99, 1), onPressed: (){}, horizontalPadding: 40, verticalPadding: 7.5, sizeText: 15, iconPath: 'assets/images/logo_facebook.svg')),
                SizedBox(height: screenHeight * 0.025,),
                SizedBox(width: screenWidth * 0.7, height: 40, 
                  child: MyElevatedButton(title: 'Login with Google', color: const Color.fromRGBO(253, 244, 214, 1), textColor: const Color.fromRGBO(125, 119, 99, 1), onPressed: (){}, horizontalPadding: 40, verticalPadding: 7.5, sizeText: 15, iconPath: 'assets/images/logo_google.svg',)),
                SizedBox(height: screenHeight * 0.025,),
                const Text("Don't have an account?", style: TextStyle(fontFamily: 'Ibarra Real Nova', fontSize: 15, color: Colors.white),),
                SizedBox(
                  width: screenWidth * 0.7,
                  child: MyElevatedButton(title: 'Sign Up', color: Colors.white, textColor: Colors.black, onPressed: () => context.go('/register'), horizontalPadding: 40, verticalPadding: 20, sizeText: 25,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}