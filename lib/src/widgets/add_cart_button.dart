import 'package:flutter/material.dart';
import 'package:shoes/src/widgets/custom_widgets.dart';

class AddCartButton extends StatelessWidget {

  final double price;

  AddCartButton({@required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
        borderRadius: BorderRadius.circular(100)
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 20),
          Text(
            '\$$price', 
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            )
          ),
          Spacer(),
          Button(text: 'Add to cart'),
          SizedBox(width: 20)
        ],
      ),
    );
  }
}