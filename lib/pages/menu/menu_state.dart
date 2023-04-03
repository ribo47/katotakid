import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/utilty/model/action_figure_model.dart';
import 'package:katotakid/utilty/model/action_figure_model_price.dart';
import 'package:katotakid/utilty/model/head_model.dart';
import 'package:katotakid/utilty/model/head_model_price.dart';

class MenuState {
  final PageEnum pageEnum;
  final HeadModel headModel;
  final HeadModelPrice headPrice;
  final ActionFigureModel actionFigureModel;
  final ActionFigureModelPrice actionFigurePrice;

  MenuState({
    required this.pageEnum,
    required this.headModel,
    required this.headPrice,
    required this.actionFigureModel,
    required this.actionFigurePrice,
  });

  static MenuState initialState = MenuState(
    pageEnum: PageEnum.menu,
    headModel: HeadModel(fullBody: 0, paintings: 0, prints: 0),
    headPrice: HeadModelPrice(fullBody: 0, paintings: 0, prints: 0),
    actionFigureModel: ActionFigureModel(fullBody: 0, paintings: 0, prints: 0),
    actionFigurePrice: ActionFigureModelPrice(fullBody: 0, paintings: 0, prints: 0),
  );

  MenuState copyWith({
    PageEnum? pageEnum,
    HeadModel? headModel,
    HeadModelPrice? headPrice,
    ActionFigureModel? actionFigureModel,
    ActionFigureModelPrice? actionFigurePrice,
  }) {
    return MenuState(
      pageEnum: pageEnum ?? this.pageEnum,
      headModel: headModel ?? this.headModel,
      headPrice: headPrice ?? this.headPrice,
      actionFigureModel: actionFigureModel ?? this.actionFigureModel,
      actionFigurePrice: actionFigurePrice ?? this.actionFigurePrice,
    );
  }
}
