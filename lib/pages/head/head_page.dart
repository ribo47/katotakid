import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/add_other_bottom.dart';
import 'package:katotakid/common/add_sub_model.dart';
import 'package:katotakid/pages/add_sub_page.dart';
import 'package:katotakid/pages/head/head_cubit.dart';
import 'package:katotakid/pages/head/head_state.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';
import 'package:katotakid/utilty/theme.dart';

class HeadPage extends StatelessWidget {
  const HeadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      bottomNavigationBar: AddOtherBottom(
          firstText: KKStrings.addClothing.tr(),
          firstCallback: () {},
          secondText: KKStrings.addFullBody.tr(),
          secondCallback: () => Navigator.pushNamed(context, '/action')),
      body: BlocProvider(
        create: (_) => HeadCubit(),
        child: BlocBuilder<HeadCubit, HeadState>(
          builder: (BuildContext context, state) {
            return _buildBody(context, state);
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, HeadState state) {
    final first = AddSubModel(
      title: KKStrings.fullBody.tr(),
      cost: state.price.fullBody,
      addSubFunction: (newValue) => context.read<HeadCubit>().changeValueHead(newValue, 'fullBody'),
      cont: state.headModel.fullBody,
      image: KKIcons.fullBody,
    );
    final second = AddSubModel(
      title: KKStrings.prints3d.tr(),
      cost: state.price.prints,
      addSubFunction: (newValue) => context.read<HeadCubit>().changeValueHead(newValue, 'prints'),
      cont: state.headModel.prints,
      image: KKIcons.prints,
    );
    final third = AddSubModel(
      title: KKStrings.painting.tr(),
      cost: state.price.paintings,
      addSubFunction: (newValue) =>
          context.read<HeadCubit>().changeValueHead(newValue, 'paintings'),
      cont: state.headModel.paintings,
      image: KKIcons.paintings,
    );

    return AddSubPage(
      first: first,
      second: second,
      third: third,
    );
  }
}
