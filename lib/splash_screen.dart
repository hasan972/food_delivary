import 'dart:async';
import 'package:flutter/material.dart';
import 'home/main_food_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//.............This is the place to write thr init state.................//
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainFoodPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Container(
    color: Colors.blue,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), 
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50), 
            child: Image.asset(
              'assets/images/Capture.PNG',             
            ),
          ),
        ),
        const SizedBox(height: 20),
        // const Text(
        //   'FOOD-RANGE',
        //   style: TextStyle(
        //     fontSize: 34,
        //     fontWeight: FontWeight.w700,
        //     color: Colors.white,
        //   ),
        // ),
      ],
    ),
  ),
);
  }
}
