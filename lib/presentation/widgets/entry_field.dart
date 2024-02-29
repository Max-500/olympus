import 'package:flutter/material.dart';

class EntryField extends StatefulWidget {
  final String title;
  final IconData? icon1;
  final IconData? icon2;
  final bool obscureText;

  const EntryField({super.key, required this.title, required this.icon1, required this.icon2, this.obscureText = false});

  @override
  State<EntryField> createState() => _EntryFieldState();
}

class _EntryFieldState extends State<EntryField> {
  bool _isWatching = false;

  void _toggle(){
    _isWatching = !_isWatching;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white, fontFamily: 'Ibarra Real Nova'),
      obscureText: _isWatching,
      decoration: InputDecoration(
        hintText: widget.title,
        hintStyle: const TextStyle(color: Colors.white, fontFamily: 'Ibarra Real Nova'),
        suffixIcon: widget.icon1 != null && widget.icon2 != null
            ? IconButton(
                icon: Icon(_isWatching ? widget.icon1 : widget.icon2),
                color: Colors.white,
                onPressed: _toggle,
              )
            : null,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          )
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueGrey
          )
        )
      ),
    );
  }
}
