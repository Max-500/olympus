import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  List<String> option = <String>['Type of membership', 'option one', 'option second'];
  late String optionSelected = option[0];

  void newOptionSelected(String? newValue){
    setState(() {
      optionSelected = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: optionSelected,
          icon: const Icon(Icons.arrow_drop_down_outlined),
          items: option.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, textAlign: TextAlign.center, style: const TextStyle(fontFamily: 'Ibarra Real Nova', fontSize: 17),),
            );
          }).toList(),
          onChanged: newOptionSelected,
        ),
      ),
    );
  }
}