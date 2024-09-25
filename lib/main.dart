import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_plantapplication/models/cart.dart' as models; // Alias for the models import
import 'package:flutter_plantapplication/screens/home_screens.dart';
import 'package:flutter_plantapplication/screens/cart_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => models.Cart(), // Use the alias here
      child: PlantsShoppingApp(),
    ),
  );
}

class PlantsShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants Shopping',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/cart': (context) => CartScreen(),
      },
    );
  }
  
  HomeScreen() {}
}

