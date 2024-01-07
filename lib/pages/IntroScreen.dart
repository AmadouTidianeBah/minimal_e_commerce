import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          Image.asset(
            "asset/images/nike.jpg",
            height: 240,
          ),

          const SizedBox(height: 56,),

          // Title
          const Text(
            "Just Do It",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),

          const SizedBox(height: 4,),

          // SubTitle
          Text(
            "Brand new sneakers and custom kicks made with premium quality",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700]
            ),
          ),

          const SizedBox(height: 48,),

          // Start Button
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomeScreen();
            },)),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12)
              ),
              child: const Center(
                child: Text(
                  "Start now",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
