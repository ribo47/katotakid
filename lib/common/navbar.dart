import 'package:flutter/material.dart';
import 'package:katotakid/common/add_other_bottom.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/pages/action_figure/action_figure_page.dart';
import 'package:katotakid/pages/clothing.dart';
import 'package:katotakid/pages/head/head_page.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:easy_localization/easy_localization.dart';

class NavBar extends StatelessWidget {
  final PageEnum page;
  final double total;
  final Function() goToHead;

  const NavBar({Key? key, required this.page, required this.total, required this.goToHead}) : super(key: key);

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
          NavBarTotal(totalPrice: total),
          const SizedBox(
            width: 46,
          ),
        ],
        if (page.showActionFigure()) ...[
          AddOtherBottom(
            label: KKStrings.addFullBody.tr(),
            callback: () => const ActionFigurePage(),
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
            callback: () => const ClothingPage(),
          ),
          const SizedBox(width: 24),
        ]
      ],
    );
  }

  Widget _buildCart(BuildContext context) {
    return IconButton(
      onPressed: () {},
      iconSize: 100,
      color: Colors.white,
      icon: const Icon(Icons.shopping_cart),
    );
  }
}
