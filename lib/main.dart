import 'package:flutter/material.dart';
import 'package:mostaql_hq_project/layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muhammad Marwan',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeLayout(),
    );
  }
}
