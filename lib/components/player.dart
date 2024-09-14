import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../game/space_debris_game.dart';
import 'movable_position_component.dart';

class Player extends MovablePositionComponent with HasGameRef<SpaceDebrisGame> {
  late Sprite sprite;

  Player() : super(size: Vector2(50, 50)); 

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('player_palico.png'); 
    print('Sprite loaded: $sprite');
    anchor = Anchor.center;
    position = Vector2(0, 0); 
  }

  @override
  void render(Canvas canvas) {
    sprite.render(canvas, position: position);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
