import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'game/space_debris_game.dart';

void main() {
  final game = SpaceDebrisGame();
  runApp(
    GameWidget(
      game: game,
    ),
  );
}
