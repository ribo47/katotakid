import 'package:http/http.dart' as http;
import 'package:katotakid/utilty/model/action_figure_model.dart';
import 'package:katotakid/utilty/model/head_model.dart';
import 'dart:convert';

class EmailHelper {
  static Future<bool> sendRegistrationNotification({
    required String user,
    required ActionFigureModel actionFigure,
    required HeadModel head,
    required bool shipping,
    String? note,
  }) async {
    var url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    const serviceId = "service_1bb9jat";
    const templateId = "template_9g9ozzm";
    const userId = "P6-PtP9Dno60Q1M4p";

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'from_name': user,
          'fullBody': actionFigure.fullBody,
          'print': actionFigure.prints,
          'paint': actionFigure.paintings,
          'fullBodyHead': head.fullBody,
          'printHead': head.prints,
          'paintHead': head.paintings,
          'shipping': shipping ? 'Regular' : 'Express',
          'notes': note ?? 'Nessuna nota aggiuntiva'
        }
      }),
    );

    return response.statusCode < 300;
  }
}
