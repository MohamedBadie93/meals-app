import 'package:flutter/material.dart';
import 'package:meals_app_3/dummy_data.dart';
import 'package:meals_app_3/models/meal.dart';
import 'package:meals_app_3/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals-screen';

  @override
  Widget build(BuildContext context) {
    var arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    String catId = arguments['id'] as String;
    String catTitle = arguments['title'] as String;

    List<Meal> meals =
        DUMMY_MEALS.where((meal) => meal.categories.contains(catId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("$catTitle"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
            id: meals[i].id,
            title: meals[i].title,
            imageUrl: meals[i].imageUrl,
            duration: meals[i].duration,
            complexity: meals[i].complexity,
            affordability: meals[i].affordability,
          );
        },
        itemCount: meals.length,
      ),
    );
  }
}
