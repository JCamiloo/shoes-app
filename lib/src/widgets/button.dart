import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final double width;
  final double height;
  final Color color;

  Button({
    @required this.text,
    this.width = 150,
    this.height = 50,
    this.color = Colors.orange
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: this.color
      ),
      child: Text('$text', style: TextStyle(color: Colors.white))
    );
  }
}