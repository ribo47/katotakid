import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/pages/menu/menu_state.dart';
import 'package:katotakid/utilty/email_helper.dart';
import 'package:katotakid/utilty/model/action_figure_model.dart';
import 'package:katotakid/utilty/model/clothing_model.dart';
import 'package:katotakid/utilty/model/head_model.dart';
import 'package:katotakid/utilty/shared_helper.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuState.initialState) {
    getPriceFromFile();
  }

  double get total => getHeadTotal() + getActionFigureTotal() + getShipment();

  int get totalCount => getHeadCount() + getActionFiguresCount();

  getPriceFromFile() async {
    final file = await rootBundle.loadString("assets/price.json");
    await SharedHelper.saveOnShared(file);
    getPrice();
  }

  Future<void> getPrice() async {
    final headPrice = await SharedHelper.getHeadPrice();
    final actionFigurePrice = await SharedHelper.getActionFigurePrice();
    final clothing = await SharedHelper.getClothingPrice();

    emit(state.copyWith(
      headPrice: headPrice,
      actionFigurePrice: actionFigurePrice,
      clothing: clothing,
    ));
  }

  void changePage(PageEnum newPage) {
    emit(state.copyWith());
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

  int getHeadCount() {
    final hm = state.headModel;
    return hm.paintings + hm.prints + hm.fullBody;
  }

  double getHeadTotal() {
    return (state.headModel.paintings * state.headPrice.paintings) +
        (state.headModel.prints * state.headPrice.prints) +
        (state.headModel.fullBody * state.headPrice.fullBody);
  }

  changeValueActionFigure(int newValue, String type) {
    final ActionFigureModel newModel = state.actionFigureModel;

    if (type == 'fullBody') {
      emit(state.copyWith(
          actionFigureModel: newModel.copyWith(fullBody: newValue)));
    }
    if (type == 'paintings') {
      emit(state.copyWith(
          actionFigureModel: newModel.copyWith(paintings: newValue)));
    }
    if (type == 'prints') {
      emit(state.copyWith(
          actionFigureModel: newModel.copyWith(prints: newValue)));
    }
  }

  int getActionFiguresCount() {
    final afm = state.actionFigureModel;
    return afm.paintings + afm.prints + afm.fullBody;
  }

  double getActionFigureTotal() {
    return (state.actionFigureModel.paintings *
            state.actionFigurePrice.paintings) +
        (state.actionFigureModel.prints * state.actionFigurePrice.prints) +
        (state.actionFigureModel.fullBody * state.actionFigurePrice.fullBody);
  }

  void changeShipping(bool isRegular) {
    emit(state.copyWith(isRegularShipping: !isRegular));
  }

  double getShipment() {
    return (state.isRegularShipping ?? true) ? 0 : 15;
  }

  Future<bool> sendEmail(String username, String notes) async {
    final mail = await EmailHelper.sendRegistrationNotification(
        user: username,
        actionFigure: state.actionFigureModel,
        head: state.headModel,
        shipping: state.isRegularShipping ?? true,
        note: notes);
    return mail;
  }

  changeValueClothing(ClothingModel clothing) {}
}
