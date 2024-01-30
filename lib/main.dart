import 'package:basket_ball/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const RunApp() );
}
class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
  }
}
