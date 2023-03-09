import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/add_other_bottom.dart';
import 'package:katotakid/utilty/KKStrings.dart';

import '../bloc/configurator_cubit.dart';
import '../bloc/configurator_state.dart';
import '../common/add_sub_widget.dart';
import '../utilty/theme.dart';

class ActionFigurePage extends StatelessWidget {
  const ActionFigurePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      bottomNavigationBar: AddOtherBottom(
        firstText: KKStrings.addClothing.tr(),
        firstCallback: () => Navigator.pushNamed(context, '/head'),
        secondText: KKStrings.addExtra3dHeads.tr(),
        secondCallback: () => Navigator.pushNamed(context, '/head'),
      ),
      body: BlocProvider(
        create: (_) => ConfiguratorCubit(),
        child: BlocBuilder<ConfiguratorCubit, ConfiguratorState>(
          builder: (context, state) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              alignment: Alignment.center,
              child: _buildBody(context, state),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, ConfiguratorState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AddSubWidget(
          value: state.actionFigureModel.fullBody,
          title: KKStrings.fullBody.tr(),
          changeValue: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueActionFigure(newValue, 'fullBody'),
          price: 82.68,
        ),
        const SizedBox(
          width: 100,
        ),
        AddSubWidget(
          value: state.actionFigureModel.prints,
          title: KKStrings.prints3d.tr(),
          changeValue: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueActionFigure(newValue, 'prints'),
          price: 11.02,
        ),
        const SizedBox(
          width: 100,
        ),
        AddSubWidget(
          value: state.actionFigureModel.paintings,
          title: KKStrings.painting.tr(),
          changeValue: (newValue) =>
              context.read<ConfiguratorCubit>().changeValueActionFigure(newValue, 'paintings'),
          price: 27.56,
        ),
      ],
    );
  }
}
