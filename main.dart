import 'package:api_session/prsentation/articles_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArticlesScreen(),
    );
  }
}