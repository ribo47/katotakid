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
              child: Stack(
                children: [...getBubbles(state.page)],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> getBubbles(int page) {
    switch (page) {
      case 0:
        return [
          AnimatedPositioned(
            top: 186,
            left: -135,
            duration: const Duration(milliseconds: 700),
            curve: Curves.decelerate,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 700),
              curve: Curves.decelerate,
              width: 255,
              height: 255,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(130),
                ),
                color: Colors.white,
              ),
            ),
          ),
          AnimatedPositioned(
            top: -475,
            left: 29,
            duration: const Duration(milliseconds: 700),
            curve: Curves.decelerate,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 700),
              curve: Curves.decelerate,
              width: 736,
              height: 736,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(350),
                ),
                color: Colors.white,
              ),
            ),
          )
        ];
      case 1:
        return [
          AnimatedPositioned(
            top: 306,
            left: -135,
            duration: const Duration(milliseconds: 700),
            curve: Curves.decelerate,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 700),
              curve: Curves.decelerate,
              width: 183,
              height: 183,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(130),
                ),
                color: Colors.white,
              ),
            ),
          ),
          AnimatedPositioned(
            top: -53,
            left: 31,
            duration: const Duration(milliseconds: 700),
            curve: Curves.decelerate,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 700),
              curve: Curves.decelerate,
              width: 195,
              height: 195,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                color: Colors.white,
              ),
            ),
          )
        ];
      default:
        return [];
    }
  }

  double getLeftValue(int page) {
    switch (page) {
      case 0:
        return -130;
      case 1:
        return -135;
      default:
        return 0;
    }
  }
}
