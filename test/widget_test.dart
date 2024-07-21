import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:momnah_portfolio/main.dart'; // Ensure this path is correct

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app initially displays the expected content.
    expect(find.text('ORGANIZE YOUR NOTES WITH EASE'), findsOneWidget);

    // Check for the theme toggle button
    expect(find.byIcon(Icons.brightness_6), findsOneWidget);

    // Tap the theme toggle button and trigger a frame.
    await tester.tap(find.byIcon(Icons.brightness_6));
    await tester.pump();

    // Verify that the theme has toggled.
    expect(find.byIcon(Icons.brightness_7), findsOneWidget);
  });
}