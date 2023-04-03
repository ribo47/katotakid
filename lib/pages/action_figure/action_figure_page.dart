import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/add_other_bottom.dart';
import 'package:katotakid/common/add_sub_model.dart';
import 'package:katotakid/pages/action_figure/action_figure_cubit.dart';
import 'package:katotakid/pages/action_figure/action_figure_state.dart';
import 'package:katotakid/pages/add_sub_page.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/theme.dart';

class ActionFigurePage extends StatelessWidget {

  const ActionFigurePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,

      body: BlocProvider(
        create: (_) => ActionFigureCubit(),
        child: BlocBuilder<ActionFigureCubit, ActionFigureState>(
          builder: (BuildContext context, state) {
            return _buildBody(context, state);
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, ActionFigureState state) {

    final first = AddSubModel(
      title: KKStrings.fullBody.tr(),
      cost: 82.68,
      addSubFunction: (newValue) =>
          context.read<ActionFigureCubit>().changeValueActionFigure(newValue, 'fullBody'),
      cont: state.actionFigureModel.fullBody,
    );
    final second = AddSubModel(
      title: KKStrings.prints3d.tr(),
      cost: 11.02,
      addSubFunction: (newValue) =>
          context.read<ActionFigureCubit>().changeValueActionFigure(newValue, 'prints'),
      cont: state.actionFigureModel.prints,
    );
    final third = AddSubModel(
      title: KKStrings.painting.tr(),
      cost: 27.56,
      addSubFunction: (newValue) =>
          context.read<ActionFigureCubit>().changeValueActionFigure(newValue, 'paintings'),
      cont: state.actionFigureModel.paintings,
    );

    return AddSubPage(
      first: first,
      second: second,
      third: third,
    );
  }
}
