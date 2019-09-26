import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/pages/ConversationPage.dart';
import 'package:messio/pages/ConversationPageSlide.dart';
import 'package:messio/widgets/InputWidget.dart';

void main() {
  const app = MaterialApp(
    home: Scaffold(
      body: const ConversationPageSlide(),
    ),
  );

  testWidgets('ConversationPageSlide UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ConversationPage), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
  });
}
