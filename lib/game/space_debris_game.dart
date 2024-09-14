import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../components/player.dart';
import 'package:flame/components.dart';

class SpaceDebrisGame extends FlameGame with KeyboardEvents {
  late Player player;
  final Set<LogicalKeyboardKey> _keysPressed = {};

  @override
  Future<void> onLoad() async {
    player = Player();
    add(player);
    camera = CameraComponent.withFixedResolution(width: 800, height: 800);
  }

  @override
  void update(double dt) {
    super.update(dt);
    camera.follow(player);
    if (_keysPressed.contains(LogicalKeyboardKey.keyW)) {
      player.moveUp(5);
    }
    if (_keysPressed.contains(LogicalKeyboardKey.keyS)) {
      player.moveDown(5);
    }
    if (_keysPressed.contains(LogicalKeyboardKey.keyA)) {
      player.moveLeft(5);
    }
    if (_keysPressed.contains(LogicalKeyboardKey.keyD)) {
      player.moveRight(5);
    }
  }

  @override
  KeyEventResult onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    if (event is KeyDownEvent) {
      _keysPressed.add(event.logicalKey);
      return KeyEventResult.handled;
    } else if (event is KeyUpEvent) {
      _keysPressed.remove(event.logicalKey);
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }
}
