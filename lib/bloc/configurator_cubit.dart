import 'package:flutter_bloc/flutter_bloc.dart';

import 'configurator_state.dart';

class ConfiguratorCubit extends Cubit<ConfiguratorState> {
  ConfiguratorCubit() : super(ConfiguratorState.initialState);

  void init() {}

  void changePage() {
    emit(state.copyWith(page: state.page == 0 ? 1 : 0));
  }
}
