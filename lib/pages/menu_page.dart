import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';
import '../common/menu_card.dart';
import '../utilty/theme.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.22;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MenuCard(
            icon: KKIcons.fullFigure,
            onTap: () => Navigator.pushNamed(context, '/action_figure'),
            size: size,
            title: KKStrings.actionFigure.tr(),
          ),
          MenuCard(
            icon: KKIcons.head,
            onTap: () => Navigator.pushNamed(context, '/head'),
            size: size,
            title: KKStrings.headsOnly.tr(),
          ),
          MenuCard(
            icon: KKIcons.tshirt,
            onTap: () => Navigator.pushNamed(context, '/configure'),
            size: size,
            title: KKStrings.clothingApparel.tr(),
          ),
        ],
      ),
    );
  }
}
