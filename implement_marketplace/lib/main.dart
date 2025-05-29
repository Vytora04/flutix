import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';
import 'providers/product_provider.dart';
import 'screens/cart_screen.dart';
import 'screens/product_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required for async prefs
  final cartProvider = CartProvider();
  await cartProvider.loadCart(); // Load saved cart before app starts

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(
          create: (_) => cartProvider,
        ), // Use pre-loaded provider
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace',
      debugShowCheckedModeBanner: false, // Hide the debug banner
      routes: {
        '/': (context) => const ProductListScreen(),
        '/cart': (context) => const CartScreen(),
      },
      initialRoute: '/',
    );
  }
}
