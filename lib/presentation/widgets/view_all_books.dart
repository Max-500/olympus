import 'package:flutter/material.dart';

class ViewAllBooks extends StatelessWidget {
  const ViewAllBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'View all',
            style: TextStyle(color: Color.fromRGBO(246, 193, 45, 1)),
          ),
          Icon(Icons.arrow_forward_outlined,
              color: Color.fromRGBO(246, 193, 45, 1)),
        ],
      ),
    );
  }
}
