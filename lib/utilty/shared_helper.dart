import 'dart:convert';
import 'package:katotakid/utilty/model/action_figure_model_price.dart';
import 'package:katotakid/utilty/model/head_model_price.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper{

  static Future<HeadModelPrice?> getHeadPrice () async {
    final price = await getJson();
    if(price == null) return null;
    return HeadModelPrice.fromMap(price);
  }

  static Future<ActionFigureModelPrice?> getActionFigurePrice () async {
    final price = await getJson();
    if(price == null) return null;
    return ActionFigureModelPrice.fromMap(price);
  }

  static Future<Map<String, dynamic>?> getJson() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final priceJson = prefs.getString('price');
    if(priceJson == null) return null;
    return jsonDecode(priceJson);

  }
}