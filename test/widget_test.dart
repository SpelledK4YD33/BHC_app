// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bhc_app/main.dart' as app; // Use 'app' as a prefix to disambiguate


void main() {
  testWidgets('Login screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app.MyApp());

    // Verify that our login screen is displayed.
    expect(find.text('BHC App Login'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);

    // Enter email and password
    await tester.enterText(find.byType(TextFormField).at(0), 'test@example.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'password123');

    // Tap the 'Login' button and trigger a frame.
    await tester.tap(find.text('Login'));
    await tester.pump(); // To start the async operation
    await tester.pump(Duration(seconds: 2)); // Wait for the fake login delay

    // Verify that our home screen is displayed.
    expect(find.text('Welcome to the BHC App!'), findsOneWidget);
  });
}

