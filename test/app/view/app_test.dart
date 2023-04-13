import 'package:flutter_test/flutter_test.dart';
import 'package:teach_on_mars/app/app.dart';
import 'package:teach_on_mars/screens/home/home.dart';

void main() {
  group('App', () {
    testWidgets(
			'renders HomeScreen', 
			(tester) async {
				await tester.pumpWidget(const App());
				await tester.pumpAndSettle(const Duration(milliseconds: 200));
				expect(find.byType(HomeScreen), findsOneWidget);
			});
  });
}
