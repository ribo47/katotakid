import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/utilty/bubbles.dart';

import '../bloc/configurator_cubit.dart';
import '../bloc/configurator_state.dart';
import '../utilty/theme.dart';
import 'background_screen.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: BlocProvider(
        create: (_) => ConfiguratorCubit(),
        child: BlocBuilder<ConfiguratorCubit, ConfiguratorState>(
          builder: (BuildContext context, state) {
            return Stack(
              children: [...getBackgroundBubbles(Pages.menu, context)],
            );
          },
        ),
      ),
    );
  }
}
