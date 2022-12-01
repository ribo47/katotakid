import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';

import '../bloc/configurator_cubit.dart';
import '../bloc/configurator_state.dart';
import '../utilty/bubbles.dart';
import '../utilty/theme.dart';
import 'background_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: BlocProvider(
        create: (_) => ConfiguratorCubit(),
        child: BlocBuilder<ConfiguratorCubit, ConfiguratorState>(
          builder: (BuildContext context, state) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/menu'),
              child: Stack(
                children: [
                  ...getBackgroundBubbles(Pages.welcome, context),
                  Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    alignment: Alignment.center,
                    child: _buildBody(context, state),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, ConfiguratorState state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const KKIcon(iconName: KKIcons.kkLogo),
        const SizedBox(
          height: 100,
        ),
        Text(
          KKStrings.welcome.tr(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
