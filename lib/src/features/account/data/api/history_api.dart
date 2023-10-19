import 'dart:async';

import 'package:chopper/chopper.dart';

part 'history_api.chopper.dart';

@ChopperApi()
abstract class HistoryService extends ChopperService {
  static HistoryService create(ChopperClient client) =>
      _$HistoryService(client);

  @Post(path: '/history')
  Future<Response> history(@Body() Map<String, dynamic> body);
}
