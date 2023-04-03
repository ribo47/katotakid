import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katotakid/common/add_sub_model.dart';
import 'package:katotakid/pages/add_sub_page.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';
import 'package:katotakid/utilty/model/head_model.dart';
import 'package:katotakid/utilty/model/head_model_price.dart';
import 'package:katotakid/utilty/theme.dart';

class HeadPage extends StatelessWidget {
  final HeadModelPrice price;
  final HeadModel headModel;
  final Function(int, String) changeValueHead;

  const HeadPage({Key? key, required this.price, required this.headModel, required this.changeValueHead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KKTheme().globalTheme.backgroundColor, body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    final first = AddSubModel(
      title: KKStrings.fullBody.tr(),
      cost: price.fullBody,
      addSubFunction: (newValue) => changeValueHead(newValue, 'fullBody'),
      cont: headModel.fullBody,
      image: KKIcons.fullBody,
    );
    final second = AddSubModel(
      title: KKStrings.prints3d.tr(),
      cost: price.prints,
      addSubFunction: (newValue) => changeValueHead(newValue, 'prints'),
      cont: headModel.prints,
      image: KKIcons.prints,
    );
    final third = AddSubModel(
      title: KKStrings.painting.tr(),
      cost: price.paintings,
      addSubFunction: (newValue) => changeValueHead(newValue, 'paintings'),
      cont: headModel.paintings,
      image: KKIcons.paintings,
    );

    return AddSubPage(
      first: first,
      second: second,
      third: third,
    );
  }
}
