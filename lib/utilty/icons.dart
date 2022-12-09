import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KKIcon extends StatelessWidget {
  final KKIcons iconName;
  final Color? color;
  const KKIcon({Key? key, required this.iconName, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      getAssetName(iconName),
      color: color ?? Colors.white,
    );
  }
}

enum KKIcons { burgerMenu, cart, fullFigure, head, kkLogo, tshirt, fullBody, paintings, prints }

String getAssetName(KKIcons iconName) {
  switch (iconName) {
    case KKIcons.burgerMenu:
      return "assets/images/burger_menu.svg";
    case KKIcons.cart:
      return "assets/images/cart.svg";
    case KKIcons.fullFigure:
      return "assets/images/full_figure.svg";
    case KKIcons.head:
      return "assets/images/head.svg";
    case KKIcons.kkLogo:
      return "assets/images/kk_logo.svg";
    case KKIcons.tshirt:
      return "assets/images/tshirt.svg";
    case KKIcons.fullBody:
      return "assets/images/fullBody.png";
    case KKIcons.paintings:
      return "assets/images/painting.png";
    case KKIcons.prints:
      return "assets/images/prints.png";
  }
}
