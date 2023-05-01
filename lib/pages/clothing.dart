import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:katotakid/common/add_sub_model.dart';
import 'package:katotakid/common/menu_card.dart';
import 'package:katotakid/pages/add_sub_page.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';
import 'package:katotakid/utilty/model/clothing_model.dart';
import 'package:katotakid/utilty/theme.dart';

class ClothingPage extends StatelessWidget {
  final List<ClothingModel> clothing;
  final List<ClothingModel> clothingChoosed;
  final Function(ClothingModel) changeValueClothing;

  const ClothingPage({
    Key? key,
    required this.clothing,
    required this.clothingChoosed,
    required this.changeValueClothing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(viewportFraction: 0.3);

    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Scrollbar(
            controller: controller,
            child: SizedBox(
              height: MediaQuery.of(context).size.width / 5 + 100,
              child: PageView.builder(
                controller: controller,
                pageSnapping: false,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: clothing.length,
                itemBuilder: (context, index) => MenuCard(
                  icon: KKIcons.tshirt,
                  onTap: () => changeValueClothing(clothing[index]),
                  size: MediaQuery.of(context).size.width / 5,
                  title: clothing[index].name,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _children(BuildContext context) {
    return clothing
        .map(
          (c) => MenuCard(
            icon: KKIcons.tshirt,
            onTap: () => changeValueClothing(c),
            size: MediaQuery.of(context).size.width / 5,
            title: KKStrings.clothingApparel.tr(),
          ),
        )
        .toList();
  }
}
