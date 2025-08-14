import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pickleball_frontend/main.dart';

void main() {
  testWidgets('App renders landing with title and action buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const PicklePlayApp());
    await tester.pumpAndSettle();

    // Because bootstrap redirects, we expect to land on LandingPage.
    expect(find.byType(Scaffold), findsWidgets);
    // Look for common actions
    expect(find.textContaining('Log In'), findsWidgets);
    expect(find.textContaining('Sign Up'), findsWidgets);
  });
}
