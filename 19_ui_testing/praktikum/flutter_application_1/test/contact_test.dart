import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/contact_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Judul halaman harus Contact', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ContactScreen(),
      ),
    );
    expect(find.text('Contacts'), findsOneWidget);
  });

  testWidgets('Phone Icon', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ContactScreen(),
      ),
    );

    expect(find.byIcon(Icons.phone_android), findsOneWidget);
  });

  testWidgets('Create New Contacts Text', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ContactScreen(),
      ),
    );

    expect(find.text('Create New Contacts'), findsOneWidget);
  });

  testWidgets('Description', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ContactScreen(),
      ),
    );

    expect(
        find.text(
            'A dialog is a type of modal window appears in front of app content to providecrictical information, or prompt for decision to provide critical information, or prompt for a decision to be made.'),
        findsOneWidget);
  });
}
