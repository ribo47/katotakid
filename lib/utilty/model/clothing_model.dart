class ClothingModel {
  final String name;
  final double price;

  ClothingModel({
    required this.name,
    required this.price,
  });

  static List<ClothingModel> getClothingList(List<dynamic> list) {
    final List<ClothingModel> defList = [];

    for (var i = 0; i < list.length; i++) {
      defList.add(ClothingModel(
        name: list[i]['name'] as String,
        price: list[i]['price'] as double,
      ));
    }

    return defList;
  }
}
