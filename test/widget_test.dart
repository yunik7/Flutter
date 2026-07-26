import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('BIT Portal loads successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BitPortalApp());

    // Verify that the welcome text for Q6 is displayed.
    expect(find.text('Welcome BIT Student'), findsOneWidget);
    expect(find.byIcon(Icons.workspace_premium_rounded), findsOneWidget);

    // Verify that the button to navigate to Q7 is present.
    expect(find.text('Open Counter Demo (Q7)'), findsOneWidget);
  });
}
