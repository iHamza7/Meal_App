import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/meal_detail.dart';
import 'package:meal_app/screens/meals_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'Gluten': false,
    'Lactose': false,
    'Vegan': false,
    'Vegetarian': false,
  };

  void _setFilters(Map<String, bool> filterData) {}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const TabScreen(),
        MealScreen.routeName: (ctx) => const MealScreen(),
        MealDetail.routeName: (context) => const MealDetail(),
        FiltersScreen.routeName: (context) => const FiltersScreen(),
      },
    );
  }
}
