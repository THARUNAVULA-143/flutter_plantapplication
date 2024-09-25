import 'package:flutter/material.dart';
import '../models/plant.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';

class PlantDetailsScreen extends StatelessWidget {
  final Plant plant;

  PlantDetailsScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              plant.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plant.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$${plant.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    plant.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    child: Text('Add to Cart'),
                    onPressed: () {
                      Provider.of<Cart>(context, listen: false).addItem(plant);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Added to cart!')),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}