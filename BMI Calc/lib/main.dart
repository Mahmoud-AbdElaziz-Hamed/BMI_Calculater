import 'package:bmi/screens/home_screen.dart';
import 'package:bmi/screens/result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const BmiCalc());
}

class BmiCalc extends StatelessWidget {
  const BmiCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "HomePage",
      routes: {
        ResultScreen.routename: (context) => const ResultScreen(),
        HomeScreen.routename: (context) => const HomeScreen()
      },
    );
  }
}
