import 'package:flutter/foundation.dart';
import 'package:flutter_plantapplication/models/plant.dart';

class CartItem {
  final Plant plant;
  int quantity;

  CartItem({required this.plant, this.quantity = 1});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.plant.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(Plant plant) {
    if (_items.containsKey(plant.id)) {
      _items.update(
        plant.id,
        (existingCartItem) => CartItem(
          plant: existingCartItem.plant,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        plant.id,
        () => CartItem(plant: plant),
      );
    }
    notifyListeners();
  }

  void removeItem(String plantId) {
    _items.remove(plantId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}