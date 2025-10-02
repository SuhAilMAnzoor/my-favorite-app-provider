import 'package:flutter/foundation.dart';

class FavoriteProvider with ChangeNotifier {

  List<int> _selectedItems = [];

  List<int> get selectedItems => _selectedItems;

  void addItem(int value) {
    _selectedItems.add(value);
    notifyListeners();
  }

  void remove(int value) {
    _selectedItems.remove(value);
    notifyListeners();
  }
}