import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plantapplication/main.dart';

void main() {
  testWidgets('PlantsShoppingApp has a title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(PlantsShoppingApp()); // Use PlantsShoppingApp here

    // Add your additional test logic here.
    expect(find.text('Plants Shopping'), findsOneWidget);
  });
}
