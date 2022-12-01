import 'package:flutter/material.dart';
import 'package:katotakid/utilty/icons.dart';
import 'package:katotakid/utilty/theme.dart';

class MenuCard extends StatelessWidget {
  final KKIcons icon;
  final String title;
  final Function() onTap;
  final double size;

  const MenuCard(
      {Key? key, required this.icon, required this.title, required this.onTap, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onTap,
          hoverColor: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(100 * 0.32),
            width: size,
            height: size,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(150 * 0.65),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  spreadRadius: 1,
                  blurRadius: 30,
                ),
              ],
            ),
            child: KKIcon(iconName: icon, color: blue),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            fontSize: 40,
            color: white,
          ),
        ),
      ],
    );
  }
}
