import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:momnah_portfolio/main.dart'; // Ensure this path is correct

void main() {
  testWidgets('HomePage content test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app initially displays the expected content.
    expect(find.text('ORGANIZE YOUR NOTES WITH EASE'), findsOneWidget);

    // Check for the initial theme toggle button (should be Icons.brightness_6)
    expect(find.byIcon(Icons.brightness_6), findsOneWidget);

    // Tap the theme toggle button and trigger a frame.
    await tester.tap(find.byIcon(Icons.brightness_6));
    await tester.pumpAndSettle();

    // Verify that the theme has toggled (should now be Icons.brightness_4)
    expect(find.byIcon(Icons.brightness_4), findsOneWidget);
  });
}
