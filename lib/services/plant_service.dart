import '../models/plant.dart';

class PlantService {
  Future<List<Plant>> getPlants() async {
    // Simulating API call
    await Future.delayed(Duration(seconds: 2));
    return [
      Plant(
        id: '1',
        name: 'Snake Plant',
        description: 'Low-maintenance indoor plant that can improve air quality.',
        price: 19.99,
        imageUrl: 'https://example.com/snake_plant.jpg',
      ),
      Plant(
        id: '2',
        name: 'Monstera Deliciosa',
        description: 'Tropical plant with unique leaf shapes, perfect for adding a jungle vibe to your home.',
        price: 29.99,
        imageUrl: 'https://example.com/monstera.jpg',
      ),
      Plant(
        id: '3',
        name: 'Fiddle Leaf Fig',
        description: 'Popular houseplant known for its large, violin-shaped leaves.',
        price: 39.99,
        imageUrl: 'https://example.com/fiddle_leaf_fig.jpg',
      ),
      Plant(
        id: '4',
        name: 'Pothos',
        description: 'Easy-to-grow vine that can thrive in a variety of light conditions.',
        price: 15.99,
        imageUrl: 'https://example.com/pothos.jpg',
      ),
      // Add more plants as needed
    ];
  }
}