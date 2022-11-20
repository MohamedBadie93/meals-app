import 'package:flutter/material.dart';
import 'package:meals_app_3/dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {
  static const String routeName = '/meal-details-screen';

  Widget sectionTitle(BuildContext ctx, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "${title} :",
        style: Theme.of(ctx).textTheme.headline6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: Column(
        children: [
          Image.network(
            selectedMeal.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          sectionTitle(context, "Ingredients"),
          Container(
            height: 200,
            width: 350,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
                itemBuilder: (ctx, i) => Card(
                      color: Colors.blue[200],
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          selectedMeal.ingredients[i],
                        ),
                      ),
                    ),
                itemCount: selectedMeal.ingredients.length),
          ),
          sectionTitle(context, "Steps"),
          Container(
            height: 200,
            width: 350,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
                itemBuilder: (ctx, i) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: FittedBox(child: Text('# ${i + 1}')),
                            ),
                          ),
                          title: Text(
                            selectedMeal.steps[i],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                itemCount: selectedMeal.steps.length),
          ),
        ],
      ),
    );
  }
}
