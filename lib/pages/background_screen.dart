import 'package:flutter/material.dart';

import '../utilty/bubbles.dart';

List<Widget> getBackgroundBubbles(Pages page, BuildContext context) {
  return [
    Positioned(
      top: 0,
      left: 0,
      child: Hero(
        tag: 'topLeft',
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 200,
            child: Image.asset(
              getBubbleName(
                Bubbles.topLeft,
                page,
              ),
            ),
          ),
        ),
      ),
    ),
    Positioned(
      top: 0,
      right: 0,
      child: Hero(
        tag: 'topRight',
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            width: 200,
            child: Image.asset(
              getBubbleName(
                Bubbles.topRight,
                page,
              ),
            ),
          ),
        ),
      ),
    ),
  ];
}
