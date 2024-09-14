import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../components/player.dart';
import 'package:flame/components.dart';

class SpaceDebrisGame extends FlameGame with KeyboardEvents {
  late Player player;

  @override
  Future<void> onLoad() async {
    final playerImage = await images.load('player_palico');
    player = Player();
    add(player);
    print(player);
  }

  @override
  void update(double dt) {
    super.update(dt);
    print(player.position);
  }

  @override
  KeyEventResult onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    if (event is KeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.keyW) {
        player.moveUp(5);
        print('moved up');
        return KeyEventResult.handled;
      }
      if (event.logicalKey == LogicalKeyboardKey.keyS) {
        player.moveDown(5);
        return KeyEventResult.handled;
      }
      if (event.logicalKey == LogicalKeyboardKey.keyA) {
        player.moveLeft(5);
        return KeyEventResult.handled;
      }
      if (event.logicalKey == LogicalKeyboardKey.keyD) {
        player.moveRight(5);
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }
}
