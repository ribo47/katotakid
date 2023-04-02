import 'package:katotakid/utilty/model/head_model.dart';
import 'package:katotakid/utilty/model/head_model_price.dart';

class HeadState {
  final HeadModel headModel;
  final HeadModelPrice price;

  HeadState({
    required this.headModel,
    required this.price,
  });

  static HeadState initialState = HeadState(
    headModel: HeadModel(fullBody: 0, paintings: 0, prints: 0),
    price: HeadModelPrice(fullBody: 0, paintings: 0, prints: 0),
  );

  HeadState copyWith({
    HeadModel? headModel,
    HeadModelPrice? price,
  }) {
    return HeadState(
      headModel: headModel ?? this.headModel,
      price: price ?? this.price,
    );
  }
}
