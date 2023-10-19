// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:chopper/chopper.dart';

import '../api/qr_api.dart';
import '../models/form_model.dart';
import '../models/qr_response_model.dart';

class QRRepository {
  QRRepository();

  Future<QRResponse> genQR({
    required int id,
    required int documento,
    required int monto,
    required int form_id,
    required String token,
    required String description,
  }) async {
    final chopper = ChopperClient(
      baseUrl: Uri.parse('https://fcpay-production.up.railway.app'),
      services: [QRService.create(ChopperClient())],
      converter: const JsonConverter(),
    );

    final qrService = chopper.getService<QRService>();

    final response = await qrService.genQR(
      {
        "token": token,
        "account_id": id,
        "documento": documento,
        "monto": monto,
        "description": description,
        "form_id": form_id,
        "image": ""
      },
    );

    chopper.dispose();
    return QRResponse.fromJson(response.body);
  }

  Future<List<Form>> getForms() async {
    final chopper = ChopperClient(
      baseUrl: Uri.parse('https://fcpay-production.up.railway.app'),
      services: [QRService.create(ChopperClient())],
      converter: const JsonConverter(),
    );

    final qrService = chopper.getService<QRService>();

    final response = await qrService.forms({"entidad_id": 1});

    final forms = response.body['forms'] as List<dynamic>;

    List<Form> hList = [];

    forms.asMap().entries.forEach(
          (form) => hList.add(Form.fromJson(form.value)),
        );
    log(hList.toString());
    chopper.dispose();
    return hList;
  }
}
