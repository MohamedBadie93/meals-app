import 'package:flutter/material.dart';
import 'package:meals_app_3/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  String catId;
  String catTitle;
  Color catColor;

  CategoryItem({
    required this.catId,
    required this.catTitle,
    this.catColor = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          CategoryMealsScreen.routeName,
          arguments: {
            'id': catId,
            'title': catTitle,
          },
        );
      },
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [catColor.withOpacity(0.7), catColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          catTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
