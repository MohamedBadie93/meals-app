import 'package:flutter/material.dart';
import 'package:meals_app_3/widgets/category_item.dart';
import 'package:meals_app_3/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static const String routeName = '/categorirs-screen';
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      children: DUMMY_CATEGORIES
          .map(
            (category) => CategoryItem(
              catId: category.id,
              catTitle: category.title,
              catColor: category.color,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
