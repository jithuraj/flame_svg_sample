import 'dart:async';

import 'package:flame/game.dart';
import 'package:flame_svg/svg.dart';
import 'package:flame_svg/svg_component.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GameWidget(game: MyGame()));
}

class MyGame extends FlameGame {
  @override
  FutureOr<void> onLoad() async {
    final svgInstanceaa = await Svg.load('android.svg');
    final size = Vector2.all(100);
    final position = Vector2.all(100);
    // code from docs
    // final svgComponent = SvgComponent.fromSvg(
    //   size,
    //   position,
    //   svgInstanceaa,
    // );

    /// change to fix the eroor
    final svgComponent = SvgComponent(
      size: size,
      position: position,
      svg: svgInstanceaa,
    );

    add(svgComponent);
  }

  // @override
  // void render(Canvas canvas) {
  //   // code from docs
  //   Svg svgInstance = Svg('android.svg');

  //   final position = Vector2(100, 100);
  //   final size = Vector2(300, 300);

  //   svgInstance.renderPosition(canvas, position, size);
  //   super.render(canvas);
  // }
}
