import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';

import '../utilty/theme.dart';

class GoodByePage extends StatelessWidget {
  const GoodByePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      extendBody: true,
      body: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/goodbye'),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(getAssetName(KKIcons.kkLogo,)),
          const SizedBox(
            height: 100,
          ),
          Text(
            KKStrings.thankYou.tr().toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            KKStrings.thankYouDescription.tr(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
