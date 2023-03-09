import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/utilty/constants.dart';
import 'package:katotakid/utilty/model/action_figure_model.dart';
import 'package:katotakid/utilty/model/head_model.dart';

import '../utilty/model/clothing_model.dart';
import 'configurator_state.dart';
import 'dart:html';

class ConfiguratorCubit extends Cubit<ConfiguratorState> {
  ConfiguratorCubit({required initPage}) : super(ConfiguratorState.initialState) {
    emit(state.copyWith(page: initPage));
  }

  void changePage(PageEnum newPage) {
    emit(state.copyWith(page: newPage));
  }

  changeValueActionFigure(int newValue, String type) {
    final ActionFigureModel newModel = state.actionFigureModel;

    if (type == 'fullBody') {
      emit(state.copyWith(actionFigureModel: newModel.copyWith(fullBody: newValue)));
    }
    if (type == 'paintings') {
      emit(state.copyWith(actionFigureModel: newModel.copyWith(paintings: newValue)));
    }
    if (type == 'prints') {
      emit(state.copyWith(actionFigureModel: newModel.copyWith(prints: newValue)));
    }
  }

  changeValueHead(int newValue, String type) {
    final HeadModel newModel = state.headModel;

    if (type == 'fullBody') {
      emit(state.copyWith(headModel: newModel.copyWith(fullBody: newValue)));
    }
    if (type == 'paintings') {
      emit(state.copyWith(headModel: newModel.copyWith(paintings: newValue)));
    }
    if (type == 'prints') {
      emit(state.copyWith(headModel: newModel.copyWith(prints: newValue)));
    }
  }

  double getTotal() {
    final partial1 = (state.headModel.paintings * Constants.paintingHead) +
        (state.headModel.prints * Constants.printHead) +
        (state.headModel.fullBody * Constants.fullBodyHead) +
        (state.actionFigureModel.paintings * Constants.painting) +
        (state.actionFigureModel.prints * Constants.print) +
        (state.actionFigureModel.fullBody * Constants.fullBody);

    switch (state.clothingModel.type) {
      case ClothingType.longSleeve:
        return partial1 * Constants.longSleeve;
      case ClothingType.tShirt:
        return partial1 * Constants.tShirt;
      case ClothingType.jacket:
        return partial1 * Constants.jacket;
      default:
        return partial1;
    }
  }
}
