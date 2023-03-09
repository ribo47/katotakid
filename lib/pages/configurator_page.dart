import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/add_other_bottom.dart';
import 'package:katotakid/common/add_sub_model.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/pages/add_sub_page.dart';
import 'package:katotakid/pages/clothing.dart';
import 'package:katotakid/pages/total.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';

import '../bloc/configurator_cubit.dart';
import '../bloc/configurator_state.dart';
import '../utilty/theme.dart';

class ConfiguratorPage extends StatelessWidget {
  final PageEnum initPage;

  const ConfiguratorPage({Key? key, required this.initPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      bottomNavigationBar: AddOtherBottom(
          firstText: KKStrings.addClothing.tr(),
          firstCallback: () {},
          secondText: KKStrings.addFullBody.tr(),
          secondCallback: () => Navigator.pushNamed(context, '/action')),
      body: BlocProvider(
        create: (_) => ConfiguratorCubit(initPage: initPage),
        child: BlocBuilder<ConfiguratorCubit, ConfiguratorState>(
          builder: (BuildContext context, state) {
            return _buildBody(context, state);
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, ConfiguratorState state) {
    late final first, second, third;
    switch (state.page) {
      case PageEnum.actionFigure:
        first = AddSubModel(
          title: KKStrings.fullBody.tr(),
          cost: 82.68,
          addSubFunction: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueActionFigure(newValue, 'fullBody'),
          cont: state.actionFigureModel.fullBody,
        );
        second = AddSubModel(
          title: KKStrings.prints3d.tr(),
          cost: 11.02,
          addSubFunction: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueActionFigure(newValue, 'prints'),
          cont: state.actionFigureModel.prints,
        );
        third = AddSubModel(
          title: KKStrings.painting.tr(),
          cost: 27.56,
          addSubFunction: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueActionFigure(newValue, 'paintings'),
          cont: state.actionFigureModel.paintings,
        );
        break;
      case PageEnum.head:
        first = AddSubModel(
          title: KKStrings.fullBody.tr(),
          cost: 60.63,
          addSubFunction: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueHead(newValue, 'fullBody'),
          cont: state.actionFigureModel.fullBody,
          image: KKIcons.fullBody,
        );
        second = AddSubModel(
          title: KKStrings.prints3d.tr(),
          cost: 99,
          addSubFunction: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueHead(newValue, 'prints'),
          cont: state.actionFigureModel.prints,
          image: KKIcons.prints,
        );
        third = AddSubModel(
          title: KKStrings.painting.tr(),
          cost: 27.56,
          addSubFunction: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueHead(newValue, 'paintings'),
          cont: state.actionFigureModel.paintings,
          image: KKIcons.paintings,
        );
        break;
      case PageEnum.clothing:
        return const ClothingPage();
      case PageEnum.total:
        return TotalPage(
          totalPrice: context.read<ConfiguratorCubit>().getTotal(),
        );
    }
    return AddSubPage(
      first: first,
      second: second,
      third: third,
    );
  }
}
