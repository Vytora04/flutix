import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(id: 'p1', title: 'Laptop', price: 999.99),
    Product(id: 'p2', title: 'Smartphone', price: 499.99),
    Product(id: 'p3', title: 'Tablet', price: 299.99),
    Product(id: 'p4', title: 'Smartwatch', price: 199.99),
  ];

  List<String> _favorites = [];

  List<Product> get items => [..._items];

  List<Product> get favorites =>
      _items.where((p) => _favorites.contains(p.id)).toList();

  Product get featuredProduct {
    final now = DateTime.now().day;
    return _items[now % _items.length];
  }

  Future<void> toggleFavorite(String productId) async {
    final prefs = await SharedPreferences.getInstance();
    if (_favorites.contains(productId)) {
      _favorites.remove(productId);
    } else {
      _favorites.add(productId);
    }
    await prefs.setStringList('favorites', _favorites);
    notifyListeners();
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    _favorites = prefs.getStringList('favorites') ?? [];
    notifyListeners();
  }
}
