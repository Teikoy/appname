

import 'package:appname/data/dumy_data.dart';
import 'package:appname/screens/meal.dart';
import 'package:appname/widgets/category_grid_item.dart';

import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
 
  void _selectCategory(BuildContext context) {
    // Navigator.push(context, route)
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => const Meals(
              title: 'Some day',
              meals: [],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick category'),
      ),
      body: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: List.generate(
              availableCategories.length,
              (index) => CategoryGridItem(category: availableCategories[index],
                    onselectCategory: () {
                      _selectCategory(context);
                    },
                  ))
          //  availableCategories.map((Category) => CategoryGridItem(category: category)).toList(),

          // for(final category in availableCategories)
          // CategoryGridItem(category: category)
          ),
    );
  }
}
