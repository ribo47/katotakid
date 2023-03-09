import 'package:flutter/material.dart';
import 'package:katotakid/utilty/icons.dart';
import 'package:katotakid/utilty/theme.dart';

class AddSubWidget extends StatelessWidget {
  final int value;
  final String title;
  final double price;
  final Function(int) changeValue;
  final KKIcons? image;

  const AddSubWidget(
      {Key? key,
      required this.value,
      required this.title,
      required this.price,
      required this.changeValue,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (image != null)
          Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 20),
            child: Image.asset(getAssetName(image!)),
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
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () => value > 0 ? changeValue(value - 1) : null,
                child: Text(
                  '-',
                  style: TextStyle(
                    color: value > 0 ? blue : lightBlue,
                    fontSize: 86,
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
                height: 150,
              ),
              SizedBox(
                width: 60,
                child: Text(
                  value.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: grey,
                    fontSize: 86,
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () => changeValue(value + 1),
                child: const Text(
                  '+',
                  style: TextStyle(
                    color: blue,
                    fontSize: 86,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: const TextStyle(
            color: white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$price €',
          style: const TextStyle(
            color: white,
            fontSize: 40,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
