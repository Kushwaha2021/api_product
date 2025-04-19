import 'package:api_product/screen/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/product_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: ProductApp(),
    ),
  );
}

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: ProductListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
