import 'package:chopper/chopper.dart';
import 'package:fcpay/src/features/home/data/api/accounts_api.dart';

class AccountsRepository {
  AccountsRepository();

  Future<Response<dynamic>> getAccounts({
    required String token,
  }) async {
    final chopper = ChopperClient(
      baseUrl: Uri.parse('https://fcpay-production.up.railway.app'),
      services: [AccountsService.create(ChopperClient())],
      converter: const JsonConverter(),
    );

    final acService = chopper.getService<AccountsService>();

    final response = await acService.accounts({"token": token});
    chopper.dispose();
    return response;
  }
}
