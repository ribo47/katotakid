import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katotakid/common/navbar.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/pages/action_figure/action_figure_page.dart';
import 'package:katotakid/pages/clothing.dart';
import 'package:katotakid/pages/head/head_page.dart';
import 'package:katotakid/pages/menu/menu_cubit.dart';
import 'package:katotakid/pages/menu/menu_state.dart';
import 'package:katotakid/pages/total.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/menu_card.dart';
import '../../utilty/theme.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  PageEnum page = PageEnum.menu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: BlocProvider(
        create: (_) => MenuCubit(),
        child: BlocBuilder<MenuCubit, MenuState>(
          builder: (BuildContext context, state) {
            return Scaffold(
              backgroundColor: KKTheme().globalTheme.backgroundColor,
              bottomNavigationBar: NavBar(
                page: page,
                total: 0.1,
                goToHead: () => setState(() {
                  page = PageEnum.head;
                }),
              ),
              body: _buildBody(context, state),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, MenuState state) {
    switch (page) {
      case PageEnum.actionFigure:
        return const ActionFigurePage();
      case PageEnum.head:
        return HeadPage(
          price: state.headPrice,
          headModel: state.headModel,
          changeValueHead: (count, type) => context.read<MenuCubit>().changeValueHead(count, type),
        );
      case PageEnum.clothing:
        return const ClothingPage();
      case PageEnum.total:
        return const TotalPage(
          totalPrice: 0.1,
        );
      case PageEnum.menu:
        return _buildMenu(context);
    }
  }

  Widget _buildMenu(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.22;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MenuCard(
            icon: KKIcons.fullFigure,
            onTap: () => setState(() {
              page = PageEnum.actionFigure;
            }),
            size: size,
            title: KKStrings.actionFigure.tr(),
          ),
          MenuCard(
            icon: KKIcons.head,
            onTap: () => setState(() {
              page = PageEnum.head;
            }),
            size: size,
            title: KKStrings.headsOnly.tr(),
          ),
          MenuCard(
            icon: KKIcons.tshirt,
            onTap: () => setState(() {
              page = PageEnum.clothing;
            }),
            size: size,
            title: KKStrings.clothingApparel.tr(),
          ),
        ],
      ),
    );
  }
}
