import 'package:flutter/material.dart';
import 'package:formation_flutter/bloc/counter_screen.dart';
import 'package:formation_flutter/res/app_colors.dart';
import 'package:formation_flutter/screens/details/details.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (
          BuildContext context,
          GoRouterState state,
        ) {
          return const CounterScreen();
        }),
    GoRoute(
        path: '/details',
        builder: (
          BuildContext context,
          GoRouterState state,
        ) {
          return const DetailsScreen();
        }),
  ]);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Avenir',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          primary: AppColors.blue,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: AppColors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: AppColors.blue,
          ),
          titleTextStyle: TextStyle(
            color: AppColors.blue,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: AppColors.blue,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            color: AppColors.gray2,
            fontSize: 18.0,
          ),
          headlineMedium: TextStyle(
            color: AppColors.gray3,
            fontSize: 17.0,
          ),
          headlineSmall: TextStyle(
            color: AppColors.blue,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        dividerColor: AppColors.gray2,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.blue,
          unselectedItemColor: AppColors.gray2,
          type: BottomNavigationBarType.fixed,
        ),
        useMaterial3: true,
      ),
    );
  }
}
