import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:payment_redirect_package/payment_redirect_package.dart';

void main() {
  testWidgets('PaymentButton displays correct text', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PaymentButton(buttonText: "Test Pay"),
        ),
      ),
    );

    expect(find.text('Test Pay'), findsOneWidget);
  });
}
