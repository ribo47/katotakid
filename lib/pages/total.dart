import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katotakid/utilty/KKStrings.dart';
import 'package:katotakid/utilty/icons.dart';

import '../utilty/theme.dart';

class TotalPage extends StatelessWidget {
  final double totalPrice;
  final double shippingPrice;
  final Function(bool) changeShipping;
  final bool isRegularShipping;
  final Future<bool> Function(String username, String notes) sendEmail;
  final TextEditingController controller = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  TotalPage({
    Key? key,
    required this.totalPrice,
    required this.changeShipping,
    required this.isRegularShipping,
    required this.shippingPrice,
    required this.sendEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KKTheme().globalTheme.backgroundColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    bool isCorrectUser = true;
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
            '${totalPrice.toStringAsFixed(2)} €',
            style: const TextStyle(color: black, fontSize: 120),
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isRegularShipping)
              _buildNotActiveButton(KKStrings.regularShipping.tr())
            else
              _buildActiveButton(KKStrings.regularShipping.tr()),
            const SizedBox(
              width: 20,
            ),
            if (isRegularShipping)
              _buildActiveButton(KKStrings.expressShipping.tr())
            else
              _buildNotActiveButton(KKStrings.expressShipping.tr()),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 400,
          child: TextField(
            controller: notesController,
            style: const TextStyle(fontSize: 20, color: grey),
            decoration: InputDecoration(
              border: _getBorder(isCorrectUser),
              hintText: 'Add some additional notes...',
              fillColor: white,
              filled: true,
              isDense: true,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              child: TextField(
                controller: controller,
                style: const TextStyle(fontSize: 20, color: grey),
                decoration: InputDecoration(
                  border: _getBorder(isCorrectUser),
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
              onTap: () async {
                final email = await sendEmail(controller.value.text, notesController.value.text);
                if (email) {
                  Navigator.pushNamed(context, '/goodbye');
                } else {
                  Widget okButton = TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  );

                  AlertDialog alert = AlertDialog(
                    title: const Text("Ooops..."),
                    content: const Text("Try again, something went wrong!"),
                    actions: [
                      okButton,
                    ],
                  );

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                }
              },
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

  OutlineInputBorder _getBorder(bool isCorrectUser) {
    if (isCorrectUser) {
      return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide.none);
    } else {
      return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.redAccent, width: 1.5));
    }
  }

  Widget _buildActiveButton(String text) {
    final stringPrice = (isRegularShipping) ? '+$shippingPrice€' : '-$shippingPrice€';

    final button = Container(
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
          Text(
            stringPrice,
            style: const TextStyle(color: white, fontSize: 44),
          ),
          Text(
            text,
            style: const TextStyle(color: white, fontSize: 22),
          ),
        ],
      ),
    );
    return InkWell(
      onTap: () => changeShipping(isRegularShipping == true),
      child: button,
    );
  }

  Widget _buildNotActiveButton(String text) {
    return Container(
      decoration: BoxDecoration(
        color: white,
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
          Text(
            text,
            style: const TextStyle(color: lightBlue, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
