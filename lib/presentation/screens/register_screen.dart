import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olympus/presentation/widgets/dropdown_button_hide_underline.dart';
import 'package:olympus/presentation/widgets/entry_field.dart';
import 'package:olympus/presentation/widgets/my_elevated_button.dart';
import 'package:olympus/presentation/widgets/my_hipervincule.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  List<String> option = <String>['option one', 'option second', 'option third'];
  late String optionSelected = option[0];

  void newOptionSelected(newValue){
    optionSelected = newValue;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(132, 91, 50, 1),
        child: Center(
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Sign Up',style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ibarra Real Nova',
                  color: Colors.white
                ),
              ),
              SizedBox(height: screenHeight * 0.10,),
              SizedBox(
                  width: screenWidth * 0.7,
                  child: const EntryField(
                    title: 'Email',
                    icon1: null,
                    icon2: null,
                  )),
              SizedBox(height: screenHeight * 0.03,),
              SizedBox(
                  width: screenWidth * 0.7,
                  child: const EntryField(
                      title: 'Password',
                      icon1: Icons.visibility_off_rounded,
                      icon2: Icons.remove_red_eye_rounded)),
              SizedBox(height: screenHeight * 0.03,),
              SizedBox(width: screenWidth * 0.7, child: const EntryField(
                      title: 'Confirm Password',
                      icon1: Icons.visibility_off_rounded,
                      icon2: Icons.remove_red_eye_rounded)),
              SizedBox(height: screenHeight * 0.05,),
              const MyDropdown(),
              SizedBox(height: screenHeight * 0.07,),
              SizedBox(
                width: screenWidth * 0.7,
                child: MyElevatedButton(title: 'Sign Up', color: Colors.white, textColor: Colors.black, onPressed: () => context.go('/login'), horizontalPadding: 40, verticalPadding: 20, sizeText: 25,)),
              SizedBox(height: screenHeight * 0.01,),
              MyHipervincule(onPressed: () => context.go('/login'),)
            ]),
          ),
        ),
      ),
    );
  }
}