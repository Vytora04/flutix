import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart' as providers;
import '../widgets/product_item.dart' as widgets;

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<providers.ProductProvider>(context).favorites;
    return Scaffold(
      appBar: AppBar(title: Text("Saved Products")),
      body:
          favorites.isEmpty
              ? Center(child: Text("No saved products."))
              : ListView.builder(
                itemCount: favorites.length,
                itemBuilder:
                    (ctx, i) => widgets.ProductItem(product: favorites[i]),
              ),
    );
  }
}
