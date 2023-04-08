import 'package:flutter/material.dart';
import 'package:katotakid/common/add_other_bottom.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/pages/menu/menu_cubit.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:easy_localization/easy_localization.dart';

class NavBar extends StatelessWidget {
  final PageEnum page;
  final int totalCount;
  final double total;
  final Function() goToHead;
  final Function() goToActionFigure;
  final Function() goToClothing;
  final Function() goToTotal;

  const NavBar({
    Key? key,
    required this.page,
    required this.totalCount,
    required this.goToHead,
    required this.goToActionFigure,
    required this.goToClothing,
    required this.goToTotal,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (page.isMenu()) {
      return const IgnorePointer();
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          width: 100,
        ),
        _buildRow(context),
        _buildCart(context),
      ],
    );
  }

  Widget _buildRow(BuildContext context) {
    return Row(
      children: [
        if (!page.isTotal()) ...[
          NavBarTotal(totalPrice: total, goToTotal: goToTotal),
          const SizedBox(
            width: 46,
          ),
        ],
        if (page.showActionFigure()) ...[
          AddOtherBottom(
            label: KKStrings.addFullBody.tr(),
            callback: goToActionFigure,
          ),
          const SizedBox(width: 24),
        ],
        if (page.showHead()) ...[
          AddOtherBottom(
            label: KKStrings.addExtra3dHeads.tr(),
            callback: goToHead,
          ),
          const SizedBox(width: 24),
        ],
        if (page.showClothing()) ...[
          AddOtherBottom(
            label: KKStrings.addClothing.tr(),
            callback: goToClothing,
          ),
          const SizedBox(width: 24),
        ]
      ],
    );
  }

  Widget _buildCart(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          child: Chip(
            backgroundColor: const Color(0xFFFF6827),
            label: Text(
              totalCount.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 100,
          color: Colors.white,
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
