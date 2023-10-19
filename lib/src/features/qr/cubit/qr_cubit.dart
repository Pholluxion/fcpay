import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fcpay/src/features/qr/data/repository/qr_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/models/form_model.dart';
part 'qr_state.dart';

class QrCubit extends Cubit<QrState> {
  QrCubit(this._sharedPreferences)
      : _qrRepository = QRRepository(),
        super(const QrState());

  final QRRepository _qrRepository;
  final SharedPreferences _sharedPreferences;

  void docChanged(String value) {
    final doc = int.tryParse(value);

    emit(state.copyWith(documento: doc));
  }

  void descChanged(String value) {
    emit(state.copyWith(description: value));
  }

  void formIdChanged(String value) {
    final doc = int.tryParse(value);

    emit(state.copyWith(form_id: doc));
  }

  void montoChanged(String value) {
    final doc = int.tryParse(value);

    emit(state.copyWith(monto: doc));
  }

  Future<void> getForms() async {
    try {
      final response = await _qrRepository.getForms();

      if (response.isNotEmpty) {
        emit(state.copyWith(forms: response));
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> genQR(String id) async {
    final cId = int.tryParse(id) ?? 0;

    try {
      final response = await _qrRepository.genQR(
        description: state.description,
        documento: state.documento,
        form_id: state.form_id,
        monto: state.monto,
        token: _sharedPreferences.getString('token') ?? '',
        id: cId,
      );

      emit(state.copyWith(qrcode: response.codigo_id));
    } catch (e) {
      log(e.toString());
    }
  }
}
