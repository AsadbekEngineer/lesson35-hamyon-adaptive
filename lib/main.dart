import 'package:flutter/material.dart';
import 'package:lesson34/screens/main_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: [
          MainScreen(),
        ],
      ),
    );
  }
}
