import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/bloc/configurator_state.dart';

import '../bloc/configurator_cubit.dart';
import '../utilty/bubbles.dart';
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
            top: 0,
            right: 0,
            duration: const Duration(milliseconds: 700),
            curve: Curves.decelerate,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 700),
              curve: Curves.decelerate,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    getBubbleName(Bubbles.topRight1),
                  ),
                ),
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
            top: 0,
            right: 0,
            duration: const Duration(milliseconds: 700),
            curve: Curves.decelerate,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 700),
              curve: Curves.decelerate,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(
                    getBubbleName(Bubbles.topRight1),
                  ),
                ),
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
