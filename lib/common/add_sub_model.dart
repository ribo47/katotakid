import 'package:katotakid/utilty/icons.dart';

class AddSubModel{
  final String title;
  final double cost;
  final Function(int) addSubFunction;
  final KKIcons? image;
  final int cont;

  const AddSubModel({
    required this.title,
    required this.cost,
    required this.addSubFunction,
    this.image,
    required this.cont,
  });
}