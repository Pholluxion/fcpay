import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fcpay/src/features/home/data/models/account_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/repository/accounts_repository.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._sharedPreferences)
      : _accountsRepository = AccountsRepository(),
        super(const HomeState());

  final AccountsRepository _accountsRepository;
  final SharedPreferences _sharedPreferences;

  Future<void> getAccounts() async {
    try {
      final response = await _accountsRepository.getAccounts(
        token: _sharedPreferences.getString('token') ?? '',
      );

      if (response.isNotEmpty) {
        emit(state.copyWith(accounts: response));
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
