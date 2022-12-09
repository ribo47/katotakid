import 'package:flutter/material.dart';
import 'package:katotakid/utilty/theme.dart';

class AddSubWidget extends StatelessWidget {
  final int value;
  final String title;
  final double price;
  final Function(int) changeValue;

  const AddSubWidget(
      {Key? key,
      required this.value,
      required this.title,
      required this.price,
      required this.changeValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(50),
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
              Text(
                value.toString(),
                style: const TextStyle(
                  color: grey,
                  fontSize: 86,
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
          price.toString(),
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
