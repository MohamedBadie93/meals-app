import 'package:flutter/material.dart';
import 'package:meals_app_3/screens/categories_screen.dart';
import 'package:meals_app_3/screens/favorites_screen.dart';
import 'package:meals_app_3/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  static const String routeName = '/tabs-screen';
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int navigationIndex = 0;
  void selecTab(int index) {
    setState(() {
      navigationIndex = index;
    });
  }

  List<Map<String, Object>> screens = [
    {
      "screen": CategoriesScreen(),
      "title": "Categories",
    },
    {
      "screen": FavoritesScreen(),
      "title": "Favorites",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screens[navigationIndex]['title'] as String),
      ),
      body: screens[navigationIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: navigationIndex,
        onTap: selecTab,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorites",
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
