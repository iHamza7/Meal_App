import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  static const routeName = '/meals-screen';
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: const Center(
        child: Text("this"),
      ),
    );
  }
}
