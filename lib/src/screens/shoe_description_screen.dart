import 'package:flutter/material.dart';
import 'package:shoes/src/widgets/custom_widgets.dart';

class ShoeDescriptionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(text: 'For you'),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Hero(
                      tag: 'shoe',
                      child: ShoePreview()
                    ),
                    Shoe(
                      title: 'Nike Air Max 720',
                      description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),
                    SizedBox(height: 25)
                  ]
                )
              )
            ),
            AddCartButton(price: 20),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}