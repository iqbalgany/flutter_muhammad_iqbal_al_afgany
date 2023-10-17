import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/new_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Judul Halaman harus New Screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: NewScreen(),
      ),
    );
    expect(find.text('New Screen'), findsOneWidget);
  });

  testWidgets('Ada gambar Samurai', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: NewScreen(),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('Icon airplane', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: NewScreen(),
    ));

    expect(find.byIcon(Icons.airplanemode_active), findsOneWidget);
  });
}
