import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/bloc/configurator_state.dart';

import '../bloc/configurator_cubit.dart';
import '../utilty/theme.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: BlocProvider(
        create: (_) => ConfiguratorCubit(),
        child: BlocBuilder<ConfiguratorCubit, ConfiguratorState>(
          builder: (BuildContext context, state) {
            return GestureDetector(
              onTap: () => context.read<ConfiguratorCubit>().changePage(),
              child: Center(
                child: (state.page == 0) ? const Text('ciao') : const Text('addio'),
              ),
            );
          },
        ),
      ),
    );
  }
}
