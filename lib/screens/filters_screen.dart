import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  final _vegetarian = false;
  final _vegan = false;
  final _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("this is filters screen"),
        ),
        drawer: const MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Adjust your Meals",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                  value: _glutenFree,
                  title: const Text('Gluten-Free'),
                  subtitle: const Text('Only Gluten-Free meals'),
                  onChanged: (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                )
              ],
            ))
          ],
        ));
  }
}
