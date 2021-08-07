import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final String text;
  const Rectangle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
