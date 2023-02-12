import 'package:flutter/material.dart';

import 'favorite_screen.dart';
import 'homepage.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.bookmark),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          HomePage(),
          FavoriteScreen(),
        ]),
      ),
    );
  }
}
