import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/bubbles.dart';
import 'package:katotakid/utilty/icons.dart';

import '../bloc/configurator_cubit.dart';
import '../bloc/configurator_state.dart';
import '../common/menu_card.dart';
import '../utilty/theme.dart';
import 'background_screen.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: BlocProvider(
        create: (_) => ConfiguratorCubit(),
        child: BlocBuilder<ConfiguratorCubit, ConfiguratorState>(
          builder: (BuildContext context, state) {
            return Stack(
              children: [
                ...getBackgroundBubbles(Pages.menu, context),
                Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  alignment: Alignment.center,
                  child: _buildBody(context, state),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, ConfiguratorState state) {
    final size = MediaQuery.of(context).size.width * 0.22;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MenuCard(
          icon: KKIcons.fullFigure,
          onTap: () => Navigator.pushNamed(context, '/action'),
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
          onTap: () => Navigator.pushNamed(context, '/clothing'),
          size: size,
          title: KKStrings.clothingApparel.tr(),
        ),
      ],
    );
  }
}
