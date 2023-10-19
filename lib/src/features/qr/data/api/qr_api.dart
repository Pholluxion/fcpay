import 'dart:async';

import 'package:chopper/chopper.dart';

part 'qr_api.chopper.dart';

@ChopperApi()
abstract class QRService extends ChopperService {
  static QRService create(ChopperClient client) => _$QRService(client);

  @Post(path: '/generateqr')
  Future<Response> genQR(@Body() Map<String, dynamic> body);

  @Post(path: '/forms')
  Future<Response> forms(@Body() Map<String, dynamic> body);
}
