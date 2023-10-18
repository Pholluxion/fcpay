import 'dart:async';

import 'package:chopper/chopper.dart';

part 'accounts_api.chopper.dart';

@ChopperApi()
abstract class AccountsService extends ChopperService {
  static AccountsService create(ChopperClient client) =>
      _$AccountsService(client);

  @Post(path: '/accounts')
  Future<Response> accounts(@Body() Map<String, String> body);
}
