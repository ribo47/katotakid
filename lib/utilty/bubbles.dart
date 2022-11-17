import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bubble extends StatelessWidget {
  final Bubbles bubbleName;

  const Bubble({Key? key, required this.bubbleName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (true)
        ? Image.asset(getBubbleName(bubbleName))
        : SvgPicture.asset(
            getBubbleName(bubbleName),
          );
  }
}

String getBubbleName(Bubbles bubbleName) {
  switch (bubbleName) {
    case Bubbles.topRight1:
      return "assets/bubbles/top_right_1.png";
    case Bubbles.topLeft1:
      return "assets/bubbles/top_right_1.svg";
    case Bubbles.bottomRight1:
      return "assets/bubbles/top_right_1.svg";
    case Bubbles.bottomLeft1:
      return "assets/bubbles/top_right_1.svg";
    case Bubbles.middleLeft1:
      return "assets/bubbles/top_right_1.svg";
    case Bubbles.topRight2:
      return "assets/bubbles/top_right_2.png";
    case Bubbles.topLeft2:
      return "assets/bubbles/top_right_2.svg";
    case Bubbles.bottomRight2:
      return "assets/bubbles/top_right_2.svg";
    case Bubbles.bottomLeft2:
      return "assets/bubbles/top_right_2.svg";
    case Bubbles.middleLeft2:
      return "assets/bubbles/top_right_2.svg";
    case Bubbles.topRight3:
      return "assets/bubbles/top_right_3.svg";
    case Bubbles.topLeft3:
      return "assets/bubbles/top_right_3.svg";
    case Bubbles.bottomRight3:
      return "assets/bubbles/top_right_3.svg";
    case Bubbles.bottomLeft3:
      return "assets/bubbles/top_right_3.svg";
    case Bubbles.middleLeft3:
      return "assets/bubbles/top_right_3.svg";
    case Bubbles.topRight4:
      return "assets/bubbles/top_right_4.svg";
    case Bubbles.topLeft4:
      return "assets/bubbles/top_right_4.svg";
    case Bubbles.bottomRight4:
      return "assets/bubbles/top_right_4.svg";
    case Bubbles.bottomLeft4:
      return "assets/bubbles/top_right_4.svg";
    case Bubbles.middleLeft4:
      return "assets/bubbles/top_right_4.svg";
    case Bubbles.topRight5:
      return "assets/bubbles/top_right_5.svg";
    case Bubbles.topLeft5:
      return "assets/bubbles/top_right_5.svg";
    case Bubbles.bottomRight5:
      return "assets/bubbles/top_right_5.svg";
    case Bubbles.bottomLeft5:
      return "assets/bubbles/top_right_5.svg";
    case Bubbles.middleLeft5:
      return "assets/bubbles/top_right_5.svg";
    case Bubbles.topRight6:
      return "assets/bubbles/top_right_6.svg";
    case Bubbles.topLeft6:
      return "assets/bubbles/top_right_6.svg";
    case Bubbles.bottomRight6:
      return "assets/bubbles/top_right_6.svg";
    case Bubbles.bottomLeft6:
      return "assets/bubbles/top_right_6.svg";
    case Bubbles.middleLeft6:
      return "assets/bubbles/top_right_6.svg";
    case Bubbles.topRight7:
      return "assets/bubbles/top_right_7.svg";
    case Bubbles.topLeft7:
      return "assets/bubbles/top_right_7.svg";
    case Bubbles.bottomRight7:
      return "assets/bubbles/top_right_7.svg";
    case Bubbles.bottomLeft7:
      return "assets/bubbles/top_right_7.svg";
    case Bubbles.middleLeft7:
      return "assets/bubbles/top_right_7.svg";
  }
  return "assets/bubbles/top_right_7.svg";
}

enum Bubbles {
  topRight1,
  topLeft1,
  bottomRight1,
  bottomLeft1,
  middleLeft1,
  topRight2,
  topLeft2,
  bottomRight2,
  bottomLeft2,
  middleLeft2,
  topRight3,
  topLeft3,
  bottomRight3,
  bottomLeft3,
  middleLeft3,
  topRight4,
  topLeft4,
  bottomRight4,
  bottomLeft4,
  middleLeft4,
  topRight5,
  topLeft5,
  bottomRight5,
  bottomLeft5,
  middleLeft5,
  topRight6,
  topLeft6,
  bottomRight6,
  bottomLeft6,
  middleLeft6,
  topRight7,
  topLeft7,
  bottomRight7,
  bottomLeft7,
  middleLeft7,
}
