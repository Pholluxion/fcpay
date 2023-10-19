import 'package:chopper/chopper.dart';
import 'package:fcpay/src/features/account/data/api/history_api.dart';

import '../models/history_model.dart';

class HistoryRepository {
  HistoryRepository();

  Future<List<History>> getHistory({
    required int id,
    required String token,
  }) async {
    final chopper = ChopperClient(
      baseUrl: Uri.parse('https://fcpay-production.up.railway.app'),
      services: [HistoryService.create(ChopperClient())],
      converter: const JsonConverter(),
    );

    final historyService = chopper.getService<HistoryService>();

    final response = await historyService.history({
      "cuenta_id": id,
      "token": token,
    });

    final transactions = response.body['transactions'] as List<dynamic>;

    List<History> hList = [];

    transactions.asMap().entries.forEach(
          (transaction) => hList.add(History.fromJson(transaction.value)),
        );

    chopper.dispose();
    return hList;
  }
}
