import '../utilty/model/action_figure_model.dart';
import '../utilty/model/clothing_model.dart';
import '../utilty/model/head_model.dart';

class ConfiguratorState {
  ConfiguratorState({
    required int page,
    required HeadModel headModel,
    required ClothingModel clothingModel,
    required ActionFigureModel actionFigureModel,
  });

  static ConfiguratorState initialState = ConfiguratorState(
    actionFigureModel: ActionFigureModel(fullBody: 0, paintings: 0, prints: 0),
    clothingModel: ClothingModel(),
    headModel: HeadModel(prints: 0, paintings: 0, fullBody: 0),
    page: 0,
  );
}
