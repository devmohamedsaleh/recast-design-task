import 'package:flutter/material.dart';

import 'features/home/presentation/home_screen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Loyalty App",
        theme: ThemeData(
          fontFamily: 'Satoshi',
          scaffoldBackgroundColor: Colors.black,
        ),
      home: const HomeScreen(),
    );
  }
}