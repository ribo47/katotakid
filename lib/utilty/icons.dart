import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KKIcon extends StatelessWidget {
  final KKIcons iconName;
  const KKIcon({Key? key, required this.iconName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      _getAssetName(),
    );
  }

  String _getAssetName() {
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
    }
  }
}

enum KKIcons { burgerMenu, cart, fullFigure, head, kkLogo, tshirt }
