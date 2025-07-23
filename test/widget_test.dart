import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:Tajir/main.dart'; // Ensure this imports your main app file

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget); // Ensure that '0' is displayed.
    expect(find.text('1'), findsNothing);   // Ensure that '1' is not displayed initially.

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add)); // Simulate a tap on the '+' icon.
    await tester.pump(); // Rebuild the widget after the state change.

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing); // Ensure that '0' is no longer displayed.
    expect(find.text('1'), findsOneWidget); // Ensure that '1' is displayed after the increment.
  });
}
