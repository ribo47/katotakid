import 'package:katotakid/utilty/model/action_figure_model_price.dart';

import '../../utilty/model/action_figure_model.dart';


class ActionFigureState {
  final ActionFigureModel actionFigureModel;
  final ActionFigureModelPrice price;

  ActionFigureState({
    required this.actionFigureModel,
    required this.price,
  });

  static ActionFigureState initialState = ActionFigureState(
    actionFigureModel: ActionFigureModel(fullBody: 0, paintings: 0, prints: 0),
    price: ActionFigureModelPrice(fullBody: 0, paintings: 0, prints: 0),
  );

  ActionFigureState copyWith({
    ActionFigureModel? actionFigureModel,
    ActionFigureModelPrice? price,
  }) {
    return ActionFigureState(
      actionFigureModel: actionFigureModel ?? this.actionFigureModel,
      price: price ?? this.price,
    );
  }
}
