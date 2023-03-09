import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katotakid/common/add_other_bottom.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';

import '../bloc/configurator_cubit.dart';
import '../bloc/configurator_state.dart';
import '../utilty/theme.dart';

class TotalPage extends StatelessWidget {
  const TotalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      bottomNavigationBar: const AddAllBottom(),
      body:  _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          KKStrings.yourTotalSoFar.tr(),
          style: const TextStyle(color: white, fontSize: 40),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Color(0x40000000),
                offset: Offset(0, 4),
                spreadRadius: 1,
                blurRadius: 30,
              ),
            ],
          ),
          width: 600,
          height: 200,
          alignment: Alignment.center,
          child: Text(
            '${context.read<ConfiguratorCubit>().getTotal()} €',
            style: const TextStyle(color: black, fontSize: 120),
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      spreadRadius: 3,
                      blurRadius: 30,
                    ),
                  ],
                ),
                width: 280,
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      '+15€',
                      style: TextStyle(color: white, fontSize: 44),
                    ),
                    Text(
                      KKStrings.regularShipping.tr(),
                      style: const TextStyle(color: white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      spreadRadius: 3,
                      blurRadius: 30,
                    ),
                  ],
                ),
                width: 280,
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      '+15€',
                      style: TextStyle(color: white, fontSize: 44),
                    ),
                    Text(
                      KKStrings.expressShipping.tr(),
                      style: const TextStyle(color: white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              child: TextField(
                style: const TextStyle(fontSize: 20, color: grey),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide.none),
                  hintText: KKStrings.yourInstagramName.tr(),
                  fillColor: white,
                  filled: true,
                  isDense: true,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () => print('ahahhahaha'),
              hoverColor: Colors.transparent,
              child: Image.asset(
                getAssetName(KKIcons.rightChevron),
                height: 40,
              ),
            ),
          ],
        )
      ],
    );
  }
}
