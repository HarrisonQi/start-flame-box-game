import 'dart:ui';

import 'package:flame/game.dart';

class BoxGame extends Game {
  Size screenSize;

  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }

  void render(Canvas canvas) {
    // 绘制背景
    Rect bgRect = Rect.fromLTWH(0, 0,
        screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xFF000000);
    canvas.drawRect(bgRect, bgPaint);

    // 绘制"目标方块"
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    Rect boxRect = Rect.fromLTWH(
        screenCenterX - 75,
        screenCenterY - 75,
        150,
        150
    );
    Paint boxPaint = Paint();
    boxPaint.color = Color(0xffffffff);
    canvas.drawRect(boxRect, boxPaint);
  }

  void update(double t) {
    // TODO: 实现 update
  }
}


