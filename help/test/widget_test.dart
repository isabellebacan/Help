import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:help/main.dart';

void main() {
  testWidgets('registration screen shows the specified copy', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const HelpApp());

    for (final text in [
      'Profissional',
      'Ou',
      'Cliente',
      'Já possui cadastro?',
      'Entrar',
      'Ao continuar, você concorda com os nossos',
      'Termos de uso',
      'Política e Privacidade',
    ]) {
      expect(find.text(text), findsOneWidget);
    }
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Image &&
            widget.image is AssetImage &&
            (widget.image as AssetImage).assetName ==
                'assets/images/logo_help.png',
      ),
      findsOneWidget,
    );
  });

  for (final entry in {
    'Profissional': 'Cadastro de profissional',
    'Cliente': 'Cadastro de cliente',
    'Entrar': 'Entrar',
    'Termos de uso': 'Termos de uso',
    'Política e Privacidade': 'Política e Privacidade',
  }.entries) {
    testWidgets('tapping ${entry.key} opens only its provisional text', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const HelpApp());
      await tester.tap(find.text(entry.key));
      await tester.pumpAndSettle();

      expect(find.byType(Text), findsOneWidget);
      expect(find.text(entry.value), findsOneWidget);
    });
  }
}
