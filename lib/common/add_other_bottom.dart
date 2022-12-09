import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katotakid/utilty/KKStrings.dart';

import '../utilty/theme.dart';

class AddOtherBottom extends StatelessWidget {
  final Function() firstCallback;
  final Function() secondCallback;
  final String firstText;
  final String secondText;

  const AddOtherBottom(
      {Key? key,
      required this.firstCallback,
      required this.secondCallback,
      required this.firstText,
      required this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/total'),
              child: Container(
                width: 300,
                height: 95,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    KKStrings.totalPrice.tr(),
                    style: const TextStyle(color: blue, fontSize: 30),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 46,
            ),
            InkWell(
              onTap: () => firstCallback(),
              child: Container(
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(color: blue, fontSize: 60),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              firstText,
              style: const TextStyle(
                color: white,
                fontSize: 18,
                height: 1.5,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              onTap: () => secondCallback(),
              child: Container(
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(color: blue, fontSize: 60),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              secondText,
              style: const TextStyle(
                color: white,
                fontSize: 18,
                height: 1.5,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

class AddAllBottom extends StatelessWidget {
  const AddAllBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          KKStrings.notEnoughYet.tr(),
          style: const TextStyle(color: white, fontSize: 30),
        ),
        const SizedBox(
          height: 44,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/action'),
              child: Container(
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(color: blue, fontSize: 60),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              KKStrings.addFullBody.tr(),
              style: const TextStyle(
                color: white,
                fontSize: 18,
                height: 1.5,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/head'),
              child: Container(
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(color: blue, fontSize: 60),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              KKStrings.addExtra3dHeads.tr(),
              style: const TextStyle(
                color: white,
                fontSize: 18,
                height: 1.5,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/clothing'),
              child: Container(
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(color: blue, fontSize: 60),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              KKStrings.addClothing.tr(),
              style: const TextStyle(
                color: white,
                fontSize: 18,
                height: 1.5,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
