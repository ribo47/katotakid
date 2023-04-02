import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/pages/head/head_state.dart';
import 'package:katotakid/utilty/model/head_model.dart';
import 'package:katotakid/utilty/shared_helper.dart';

class HeadCubit extends Cubit<HeadState> {
  HeadCubit() : super(HeadState.initialState){
    getPrice();
  }

  Future<void> getPrice() async {
    final headPrice = await SharedHelper.getHeadPrice();
    emit(state.copyWith(
      price: headPrice,
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

  double getTotal() {
    return (state.headModel.paintings * state.price.paintings) +
        (state.headModel.prints * state.price.prints) +
        (state.headModel.fullBody * state.price.fullBody);
  }
}
