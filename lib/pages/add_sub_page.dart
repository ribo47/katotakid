import 'package:flutter/material.dart';
import 'package:katotakid/common/add_sub_model.dart';
import '../common/add_sub_widget.dart';

class AddSubPage extends StatelessWidget {
  final AddSubModel first;
  final AddSubModel second;
  final AddSubModel third;

  const AddSubPage({Key? key, required this.first, required this.second, required this.third}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AddSubWidget(
          value: first.cont,
          title: first.title,
          changeValue: first.addSubFunction,
          price: first.cost,
          image: first.image,
        ),
        const SizedBox(
          width: 100,
        ),
        AddSubWidget(
          value: second.cont,
          title: second.title,
          changeValue: second.addSubFunction,
          price: second.cost,
          image: second.image,
        ),
        const SizedBox(
          width: 100,
        ),
        AddSubWidget(
          value: third.cont,
          title: third.title,
          changeValue: third.addSubFunction,
          price: third.cost,
          image: third.image,
        ),
      ],
    );
  }
}
