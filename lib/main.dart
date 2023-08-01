import 'package:flutter/material.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/screens/details/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Avenir',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          primary: AppColors.blue,
        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: AppColors.blue,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            color: AppColors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        useMaterial3: true,
      ),
      //home: const HomePage(),
      home: const DetailsScreen(),
    );
  }
}
