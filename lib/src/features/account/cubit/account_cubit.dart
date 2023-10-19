import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fcpay/src/features/account/data/models/history_model.dart';
import 'package:fcpay/src/features/account/data/repository/history_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit(this._sharedPreferences)
      : _repository = HistoryRepository(),
        super(const AccountState());

  final HistoryRepository _repository;
  final SharedPreferences _sharedPreferences;

  Future<void> getHistory(String id) async {
    try {
      final cId = int.tryParse(id) ?? 0;

      final response = await _repository.getHistory(
        id: cId,
        token: _sharedPreferences.getString('token') ?? '',
      );

      if (response.isNotEmpty) {
        emit(state.copyWith(history: response));
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
