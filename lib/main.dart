import 'package:flutter/material.dart';
import 'package:minimal_e_commerce/model/Cart.dart';
import 'package:minimal_e_commerce/pages/HomeScreen.dart';
import 'package:provider/provider.dart';

import 'pages/IntroScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primarySwatch: Colors.purple,
        ),
        home: const IntroScreen(),
      )
    );
  }
}