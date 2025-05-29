import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart' as provider;
import '../widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<provider.ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<Map<String, String>>(
          future: QuoteService.fetchQuote(),
          builder:
              (ctx, snapshot) =>
                  snapshot.hasData
                      ? Text(snapshot.data!['quote']!)
                      : const Text("Marketplace"),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to the cart screen
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productProvider.items.length,
        itemBuilder: (ctx, i) {
          return ProductItem(product: productProvider.items[i]);
        },
      ),
    );
  }
}

class QuoteService {
  static Future<Map<String, String>> fetchQuote() async {
    // Replace this with your actual implementation
    await Future.delayed(const Duration(seconds: 1));
    return {'quote': 'Welcome to the Marketplace!'};
  }
}
