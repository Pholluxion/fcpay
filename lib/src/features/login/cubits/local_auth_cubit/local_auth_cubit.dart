import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:local_auth_platform_interface/local_auth_platform_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/data.dart';

part 'local_auth_state.dart';

class LocalAuthCubit extends Cubit<LocalAuthState> {
  LocalAuthCubit(this._sharedPreferences)
      : _localAuthRepository = LocalAuthRepository(),
        _loginRepository = LoginRepository(),
        super(const LocalAuthState());

  final LoginRepository _loginRepository;
  final LocalAuthRepository _localAuthRepository;
  final SharedPreferences _sharedPreferences;

  void init() {
    if (!state.isAuthenticated) {
      this
        ..isDeviceSupported()
        ..checkBiometrics()
        ..authenticateWithBiometrics();
    }
  }

  void enableLocalAuth() => emit(state.copyWith(isEnabled: true));
  void disableLocalAuth() => emit(state.copyWith(isEnabled: false));

  void isDeviceSupported() async {
    final isDeviceSupported = await _localAuthRepository.isDeviceSupported();

    emit(state.copyWith(isDeviceSupported: isDeviceSupported));
  }

  void checkBiometrics() async {
    final checkBiometrics = await _localAuthRepository.checkBiometrics();

    emit(state.copyWith(checkBiometrics: checkBiometrics));
  }

  void getAvailableBiometrics() async {
    final availableBiometrics =
        await _localAuthRepository.getAvailableBiometrics();

    emit(state.copyWith(availableBiometrics: availableBiometrics));
  }

  void authenticate() async {
    final isAuthenticated = await _localAuthRepository.authenticate();

    emit(state.copyWith(isAuthenticated: isAuthenticated));
  }

  void authenticateWithBiometrics() async {
    final isAuthenticated =
        await _localAuthRepository.authenticateWithBiometrics();

    if (isAuthenticated) {
      emit(state.copyWith(isEnabled: true));
      await logInWithCredentials()
          .whenComplete(() => emit(state.copyWith(isEnabled: false)));
    }
  }

  void cancelAuthentication() async {
    final cancelAuthentication =
        await _localAuthRepository.cancelAuthentication();
    log(cancelAuthentication.toString());
    if (cancelAuthentication) {
      emit(state.copyWith(isAuthenticated: false));
    }
  }

  Future<void> logInWithCredentials() async {
    try {
      final email = _sharedPreferences.getString('email') ?? '';
      final password = _sharedPreferences.getString('pass') ?? '';

      final response = await _loginRepository.logInWithEmailAndPassword(
        email: email,
        pass: password,
      );

      _sharedPreferences.setString('token', response.body['access_token']);

      log(_sharedPreferences.getString('token') ?? '');

      if (response.statusCode == 200) {
        emit(state.copyWith(isAuthenticated: true));
      } else {
        emit(state.copyWith(isAuthenticated: false));
      }
    } catch (_) {
      emit(state.copyWith(isAuthenticated: false));
    }
  }
}
