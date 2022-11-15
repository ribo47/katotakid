import 'package:bloc/bloc.dart';

import 'configurator_state.dart';

class ConfiguratorCubit extends Cubit<ConfiguratorState> {
  ConfiguratorCubit() : super(ConfiguratorState.initialState);

  init() {}
}
