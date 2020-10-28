import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/src/models/shoe_model.dart';
import 'package:shoes/src/screens/shoe_description_screen.dart';
 
void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShoeModel())
      ],
      child: MyApp()
    )
  );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes',
      home: ShoeDescriptionScreen()
    );
  }
}