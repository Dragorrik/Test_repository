import 'package:flutter/material.dart';
import 'package:test_flutter/pages/home_page.dart';
//import 'package:test_flutter/pages/woman_products_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter test',
      home: const HomePage(),
    );
  }
}
