import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/pages/action_figure/action_figure_state.dart';
import 'package:katotakid/utilty/model/action_figure_model.dart';
import 'package:katotakid/utilty/shared_helper.dart';

class ActionFigureCubit extends Cubit<ActionFigureState> {
  ActionFigureCubit() : super(ActionFigureState.initialState){
    getPrice();
  }

  Future<void> getPrice() async {
    final afPrice = await SharedHelper.getActionFigurePrice();
    emit(state.copyWith(
      price: afPrice,
    ));
  }

  void changePage(PageEnum newPage) {
    emit(state.copyWith());
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

  double getTotal() {
    return (state.actionFigureModel.paintings * state.price.paintings) +
        (state.actionFigureModel.prints * state.price.prints) +
        (state.actionFigureModel.fullBody * state.price.fullBody);
  }
}
