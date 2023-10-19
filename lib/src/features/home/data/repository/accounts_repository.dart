import 'package:chopper/chopper.dart';
import 'package:fcpay/src/features/home/data/api/accounts_api.dart';

import '../models/account_model.dart';

class AccountsRepository {
  AccountsRepository();

  Future<List<Account>> getAccounts({required String token}) async {
    final chopper = ChopperClient(
      baseUrl: Uri.parse('https://fcpay-production.up.railway.app'),
      services: [AccountsService.create(ChopperClient())],
      converter: const JsonConverter(),
    );

    final acService = chopper.getService<AccountsService>();

    final response = await acService.accounts({"token": token});

    final accounts = response.body['accounts'] as List<dynamic>;

    List<Account> acList = [];

    accounts
        .asMap()
        .entries
        .forEach((account) => acList.add(Account.fromJson(account.value)));

    chopper.dispose();
    return acList;
  }
}
