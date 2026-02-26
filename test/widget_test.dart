import 'package:flutter_test/flutter_test.dart';
import 'package:focus_pro/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const FocusProApp());
    expect(find.text('Welcome to Focus Pro'), findsOneWidget);
  });
}