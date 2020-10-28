import 'package:flutter/material.dart';

class Shoe extends StatelessWidget {

  final String title;
  final String description;

  Shoe({
    @required this.title, 
    @required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            this.title, 
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            )
          ),
          SizedBox(height: 20),
          Text(
            this.description, 
            style: TextStyle(
              color: Colors.black54,
              letterSpacing: 1.6
            )
          )
        ],
      ),
    );
  }
}