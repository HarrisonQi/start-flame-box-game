import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/gestures.dart';

class BoxGame extends Game with TapDetector {
  Size screenSize;
  bool hasWon = false;

  void onTapDown(TapDownDetails details) {
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    if (details.globalPosition.dx >= screenCenterX - 75 &&
        details.globalPosition.dx <= screenCenterX + 75 &&
        details.globalPosition.dy >= screenCenterY - 75 &&
        details.globalPosition.dy <= screenCenterY + 75) {
      hasWon = true;
    }
  }

  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }

  void render(Canvas canvas) {
    // 绘制背景
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xFF000000);
    canvas.drawRect(bgRect, bgPaint);

    // 绘制"目标方块"
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    Rect boxRect =
        Rect.fromLTWH(screenCenterX - 75, screenCenterY - 75, 150, 150);
    Paint boxPaint = Paint();
    // 判断: 若游戏胜利, 方块变为绿色, 反之则为白色
    if (hasWon) {
      boxPaint.color = Color(0xff00ff00);
    } else {
      boxPaint.color = Color(0xffffffff);
    }
    canvas.drawRect(boxRect, boxPaint);
  }

  void update(double t) {
    // TODO: 实现 update
  }
}
