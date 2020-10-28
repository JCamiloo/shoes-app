import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final text;

  CustomAppBar({@required this.text});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Text(this.text, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
            Spacer(),
            Icon(Icons.search, size: 30)
          ],
        ),
      ),
    );
  }
}