import 'package:flutter/material.dart';

class Filters with ChangeNotifier {
  bool _isGlutenFree = false;
  bool _isLactoseFree = false;
  bool _isVegan = false;
  bool _isVegetarian = false;

  /***************  Start Setters ***************/
  void changeIsGlutenFree(bool val) {
    _isGlutenFree = val;
    notifyListeners();
  }

  void changeIsLactoseFree(bool val) {
    _isLactoseFree = val;
    notifyListeners();
  }

  void changeIsVegan(bool val) {
    _isVegan = val;
    notifyListeners();
  }

  void changeIsVegetarian(bool val) {
    _isVegetarian = val;
    notifyListeners();
  }
  /***************  End Setters***************/

  /*************** Start Getters ***************/
  bool get isGlutenFree {
    return _isGlutenFree;
  }

  bool get isLactoseFree {
    return _isLactoseFree;
  }

  bool get isVegan {
    return _isVegan;
  }

  bool get isVegetarian {
    return _isVegetarian;
  }

  /*************** End Getters ***************/
}
