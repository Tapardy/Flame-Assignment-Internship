import 'package:flame/components.dart';

class MovablePositionComponent extends PositionComponent {
  MovablePositionComponent({Vector2? size}) : super(size: size ?? Vector2(50, 50));

  void moveUp(double amount) {
    position.y -= amount;
  }

  void moveDown(double amount) {
    position.y += amount;
  }

  void moveLeft(double amount) {
    position.x -= amount;
  }

  void moveRight(double amount) {
    position.x += amount;
  }
}
