import 'package:flutter/material.dart';
import 'package:flutter_web/pages/Home.dart';
import 'package:flutter_web/utilis/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense',
      theme: ThemeData(
        brightness: Brightness.light,
          primaryColor: AppColors.primary
      ),
      home: const Homes(),
    );
  }
}
