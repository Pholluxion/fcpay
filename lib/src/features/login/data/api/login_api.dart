import 'dart:async';

import 'package:chopper/chopper.dart';

part 'login_api.chopper.dart';

@ChopperApi()
abstract class LoginService extends ChopperService {
  static LoginService create(ChopperClient client) => _$LoginService(client);

  @Post(path: '/token')
  Future<Response> login(@Body() Map<String, String> body);
}
