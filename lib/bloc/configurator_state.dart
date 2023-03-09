import 'package:katotakid/common/page_enum.dart';

import '../utilty/model/action_figure_model.dart';
import '../utilty/model/clothing_model.dart';
import '../utilty/model/head_model.dart';

class ConfiguratorState {
  final PageEnum page;
  final HeadModel headModel;
  final ClothingModel clothingModel;
  final ActionFigureModel actionFigureModel;
  ConfiguratorState({
    required this.page,
    required this.headModel,
    required this.clothingModel,
    required this.actionFigureModel,
  });

  static ConfiguratorState initialState = ConfiguratorState(
    actionFigureModel: ActionFigureModel(fullBody: 0, paintings: 0, prints: 0),
    clothingModel: ClothingModel(),
    headModel: HeadModel(prints: 0, paintings: 0, fullBody: 0),
    page: PageEnum.actionFigure,
  );

  ConfiguratorState copyWith({
    PageEnum? page,
    HeadModel? headModel,
    ClothingModel? clothingModel,
    ActionFigureModel? actionFigureModel,
  }) {
    return ConfiguratorState(
      page: page ?? this.page,
      headModel: headModel ?? this.headModel,
      clothingModel: clothingModel ?? this.clothingModel,
      actionFigureModel: actionFigureModel ?? this.actionFigureModel,
    );
  }
}
