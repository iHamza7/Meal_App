import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;
  const FiltersScreen(this.currentFilters, this.saveFilters, {super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  initState() {
    super.initState();
    _glutenFree = widget.currentFilters['Gluten']!;
    _lactoseFree = widget.currentFilters['Lactose']!;
    _vegan = widget.currentFilters['Vegan']!;
    _vegetarian = widget.currentFilters['Vegetarian']!;
  }

  Widget _buildSwitch(String title, String subtitle, var currentvalue,
      final ValueChanged<bool>? changeValue) {
    return SwitchListTile(
      value: currentvalue,
      title: Text(title),
      subtitle: Text(subtitle),
      onChanged: changeValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("this is filters screen"),
          actions: [
            IconButton(
              onPressed: () {
                final selectedFilters = {
                  'Gluten': _glutenFree,
                  'Lactose': _lactoseFree,
                  'Vegan': _vegan,
                  'Vegetarian': _vegetarian,
                };
                widget.saveFilters(selectedFilters);
              },
              icon: const Icon(Icons.save),
            ),
          ],
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
                _buildSwitch(
                  'Gluten-Free',
                  'Gluten-FREE meals',
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                _buildSwitch(
                  'Lactose-free',
                  'lactose-FREE meals',
                  _lactoseFree,
                  (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                ),
                _buildSwitch(
                  'Vegan',
                  'vegan-FREE meals',
                  _vegan,
                  (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                _buildSwitch(
                  'Vegetarian',
                  'Vegetarian-FREE meals',
                  _vegetarian,
                  (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
              ],
            ))
          ],
        ));
  }
}
