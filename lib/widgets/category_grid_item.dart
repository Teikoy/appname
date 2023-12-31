import 'package:flutter/material.dart';

import 'package:appname/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category, 
    required this.onselectCategory,
  });
  final void Function() onselectCategory;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onselectCategory,
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.red,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
          
            gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.55),
            category.color.withOpacity(0.9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
