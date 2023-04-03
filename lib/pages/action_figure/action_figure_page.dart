import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katotakid/common/add_sub_model.dart';
import 'package:katotakid/pages/add_sub_page.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/model/action_figure_model.dart';
import 'package:katotakid/utilty/model/action_figure_model_price.dart';
import 'package:katotakid/utilty/theme.dart';

class ActionFigurePage extends StatelessWidget {

  final ActionFigureModel actionFigureModel;
  final ActionFigureModelPrice price;
  final Function(int, String) changeValueActionFigure;

  const ActionFigurePage({Key? key, required this.actionFigureModel, required this.price, required this.changeValueActionFigure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,

      body: _buildBody(context)
    );
  }

  Widget _buildBody(BuildContext context) {

    final first = AddSubModel(
      title: KKStrings.fullBody.tr(),
      cost: price.fullBody,
      addSubFunction: (newValue) => changeValueActionFigure(newValue, 'fullBody'),
      cont: actionFigureModel.fullBody,
    );
    final second = AddSubModel(
      title: KKStrings.prints3d.tr(),
      cost: price.prints,
      addSubFunction: (newValue) =>changeValueActionFigure(newValue, 'prints'),
      cont: actionFigureModel.prints,
    );
    final third = AddSubModel(
      title: KKStrings.painting.tr(),
      cost: price.paintings,
      addSubFunction: (newValue) =>changeValueActionFigure(newValue, 'paintings'),
      cont: actionFigureModel.paintings,
    );

    return AddSubPage(
      first: first,
      second: second,
      third: third,
    );
  }
}
