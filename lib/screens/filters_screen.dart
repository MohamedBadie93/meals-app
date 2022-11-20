import 'package:flutter/material.dart';
import 'package:meals_app_3/providers/filters.dart';
import 'package:meals_app_3/widgets/main_drawer.dart';
import 'package:provider/provider.dart';

class FiltersScreen extends StatelessWidget {
  static const String routeName = '/filters-screen';
  @override
  Widget build(BuildContext context) {
    Filters filtersProvider = Provider.of<Filters>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection :",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SwitchListTile(
            title: Text("IsGlutenFree"),
            subtitle: Text("only contains gluten-free meals"),
            value: filtersProvider.isGlutenFree,
            onChanged: (val) {
              filtersProvider.changeIsGlutenFree(val);
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
