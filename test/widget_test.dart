import 'package:flutter_test/flutter_test.dart';
import 'package:flame/game.dart';
import 'package:astoidcollector/game/space_debris_game.dart';

void main() {
  testWidgets('Game widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      GameWidget(
        game: SpaceDebrisGame(),
      ),
    );

    expect(find.byType(GameWidget), findsOneWidget);
  });
}
