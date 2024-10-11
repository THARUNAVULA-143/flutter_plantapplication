# Plants Shopping App

## Description
The Plants Shopping App is a Flutter-based mobile application designed for plant enthusiasts to browse, learn about, and purchase various plants. This project demonstrates the implementation of a full-fledged e-commerce app using Flutter, showcasing best practices in state management, navigation, and UI design.

## Features
- Browse a catalog of plants
- View detailed information about each plant
- Add plants to a shopping cart
- Manage cart items (add, remove, update quantities)
- Checkout process (simulated)
- Responsive design for various screen sizes

## Project Structure
```
lib/
├── models/
│   ├── cart.dart
│   └── plant.dart
├── screens/
│   ├── cart_screen.dart
│   ├── home_screens.dart
│   └── plant_details_screen.dart
├── services/
│   └── plant_service.dart
├── widgets/
│   ├── cart_item.dart
│   └── plant_card.dart
└── main.dart
```

## Technologies Used
- Flutter: UI framework for building natively compiled applications
- Dart: Programming language optimized for building mobile, desktop, server, and web applications
- Provider: State management solution for Flutter applications
- Material Design: Design system for creating intuitive and consistent user interfaces

## Getting Started
1. Ensure you have Flutter installed on your machine
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Use `flutter run` to start the application on your connected device or emulator

## State Management
This project uses the Provider package for state management. The main state objects are:
- Cart: Manages the user's shopping cart
- PlantService: Handles fetching and managing plant data

## Screens
1. Home Screen: Displays a list of available plants
2. Plant Details Screen: Shows detailed information about a selected plant
3. Cart Screen: Allows users to review and manage items in their cart

## Widgets
- PlantCard: Reusable widget for displaying plant information in a card format
- CartItem: Represents an item in the shopping cart

## Future Enhancements
- User authentication and profiles
- Integration with a backend API for dynamic plant data
- Payment gateway integration
- Favorites/Wishlist functionality
- Search and filter options for plants

## Contributing
Contributions to improve the Plants Shopping App are welcome. Please feel free to submit a Pull Request.

## License
This project is open source and available under the [MIT License](LICENSE).

