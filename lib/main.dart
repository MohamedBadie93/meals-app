import 'package:flutter/material.dart';
import 'package:meals_app_3/providers/filters.dart';
import 'package:meals_app_3/screens/categories_screen.dart';
import 'package:meals_app_3/screens/category_meals_screen.dart';
import 'package:meals_app_3/screens/filters_screen.dart';
import 'package:meals_app_3/screens/meal_details_screen.dart';
import 'package:meals_app_3/screens/tabs_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Filters()),
      ],
      child: MaterialApp(
        title: 'MealsApp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6:
                    TextStyle(fontSize: 20, fontFamily: "RobotoCondensed"),
              ),
        ),
        routes: {
          //CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
          TabsScreen.routeName: (ctx) => TabsScreen(),
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
          MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
          FiltersScreen.routeName: (ctx) => FiltersScreen(),
        },
        home: TabsScreen(),
      ),
    );
  }
}
